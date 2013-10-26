.class public final Lcom/android/launcher2/HomeFragment;
.super Landroid/app/Fragment;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeFragment$12;,
        Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;,
        Lcom/android/launcher2/HomeFragment$AppWidgetResetObserver;,
        Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field public static final CHOOSER_MODE:Ljava/lang/String; = "mode"

.field static final DEBUG_WIDGETS:Z = false

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final FOLDER_DARKEN_LAYER_VISIBILITY:Ljava/lang/String; = "launcher.workspace_folder_darken_layer_visibility"

.field private static final FOLDER_STATE_BUNDLE:Ljava/lang/String; = "launcher.workspace_folder_bundle"

.field static final LOGD:Z = false

.field static final MENU_GROUP_WALLPAPER:I = 0x1

.field static final MENU_HELP:I = 0x5

.field static final MENU_MANAGE_APPS:I = 0x3

.field static final MENU_SYSTEM_SETTINGS:I = 0x4

.field static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "launcher.workspace_open_folder_id"

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_start"

.field static final PROFILE_STARTUP:Z = false

.field private static final QUICKVIEW_DELETE_INDEX:Ljava/lang/String; = "launcher.workspace_quickview_delete_index"

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_NEW_FOLDER_WITH_SHORTCUT_ITEM:I = 0x2

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field static final REQUEST_PICK_APPLICATION:I = 0x6

.field static final REQUEST_PICK_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_SHORTCUT:I = 0x7

.field static final REQUEST_PICK_WALLPAPER:I = 0xa

.field public static final RESPONSE_CODE_SHOW_WIDGETS:I = -0x2710

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_STATE_PENDING_ADD_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeFragment"

.field static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field private static final WAS_IN_QUICKVIEW:Ljava/lang/String; = "launcher.workspace_was_in_quickview"

.field static final sDumpLogs:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sFolders:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field static sPanelDrawer:Lcom/android/launcher2/PanelDrawer; = null

.field private static sPendingAddList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeFragment$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private final ADVANCE_MSG:I

.field private final REMOVE_MARKETSAMPLE:I

.field private final SHOW_MARKETSAMPLE:I

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAfterSavedInstanceState:Z

.field private mAllAppsIcon:Landroid/view/View;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mCPMgr:Lcom/android/launcher2/ContextualPageManager;

.field private mCurrentDragItem:Lcom/android/launcher2/BaseItem;

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDarkenView:Landroid/view/View;

.field private mDeleteDropLayout:Landroid/widget/LinearLayout;

.field private mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mDraggedItemScreen:I

.field private mDraggedItemX:I

.field private mDraggedItemY:I

.field private mEditBar:Lcom/android/launcher2/HomeEditBar;

.field private mEditIcon:Landroid/view/View;

.field private mEditIconDivider:Landroid/view/View;

.field private mFavoritesModeIsNormal:Z

.field private mFolderBundle:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeDarkenLayer:Landroid/view/View;

.field private mHomeEditButtonListener:Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

.field private mHomeEditTitleBar:Landroid/view/ViewGroup;

.field private mHomeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mHomeKeyPress:Z

.field private mHomeSearchBtn:Landroid/view/View;

.field private mHomeTopBar:Landroid/view/View;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDeletePopup:Z

.field private mMarketSample:Landroid/view/View;

.field private mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mPaint:Landroid/graphics/Paint;

.field private mPendingAddInfo:Lcom/android/launcher2/HomeItem;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field mPrevPageIndex:I

.field private mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

.field private mRestoring:Z

.field private mSavedState:Landroid/os/Bundle;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mTmpAddItemCellCoordinates:[I

.field public mViewRoot:Landroid/view/View;

.field mWaitingForResult:Z

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z

.field top4AnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFragment;->sDumpLogs:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 156
    new-instance v0, Lcom/android/launcher2/HomeFragment$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 169
    new-instance v0, Lcom/android/launcher2/HomeItem;

    invoke-direct {v0}, Lcom/android/launcher2/HomeItem;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    .line 170
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 181
    new-instance v0, Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditButtonListener:Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

    .line 187
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceRunning:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    .line 205
    iput v1, p0, Lcom/android/launcher2/HomeFragment;->ADVANCE_MSG:I

    .line 206
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher2/HomeFragment;->mAdvanceInterval:I

    .line 207
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher2/HomeFragment;->mAdvanceStagger:I

    .line 208
    iput v4, p0, Lcom/android/launcher2/HomeFragment;->SHOW_MARKETSAMPLE:I

    .line 209
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/HomeFragment;->REMOVE_MARKETSAMPLE:I

    .line 211
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceTimeLeft:J

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 219
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    .line 252
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeKeyPress:Z

    .line 256
    iput v3, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    .line 257
    iput v3, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    .line 258
    iput v3, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    .line 777
    new-instance v0, Lcom/android/launcher2/HomeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$3;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1100
    new-instance v0, Lcom/android/launcher2/HomeFragment$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$6;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    .line 1135
    new-instance v0, Lcom/android/launcher2/HomeFragment$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeFragment$7;-><init>(Lcom/android/launcher2/HomeFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    .line 2424
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    .line 2609
    iput v2, p0, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    .line 3149
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Hotseat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/HomeFragment;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/DeleteDropTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/HomeFragment;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/HomeFragment;->changeTop4IconContainer(IZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->performOnHomePressed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/HomeFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeFragment;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mMarketSample:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/HomeFragment;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    return-object v0
.end method

.method private changeTop4Icon(Landroid/view/View;I)V
    .locals 18
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 2697
    sget-boolean v13, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v14, 0x258

    if-ge v13, v14, :cond_0

    move-object/from16 v7, p1

    .line 2700
    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 2701
    .local v7, cl:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    invoke-virtual {v13, v14}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout;

    .line 2704
    .local v11, prevcl:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz v11, :cond_1

    .line 2705
    const-string v13, "Launcher.HomeFragment"

    const-string v14, "[CP] Top4 Animation is isRunning."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    .end local v11           #prevcl:Lcom/android/launcher2/CellLayout;
    :cond_0
    :goto_0
    return-void

    .line 2709
    .restart local v7       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v11       #prevcl:Lcom/android/launcher2/CellLayout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    move/from16 v0, p2

    if-ne v13, v0, :cond_0

    .line 2713
    if-eqz v7, :cond_0

    .line 2714
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    move/from16 v0, p2

    if-ne v13, v0, :cond_2

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v13

    if-nez v13, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v13

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v14

    if-eq v13, v14, :cond_0

    .line 2718
    :cond_2
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    .line 2719
    .local v2, CPType:I
    const/4 v3, 0x0

    .line 2721
    .local v3, PrevCPType:I
    if-eqz v11, :cond_3

    .line 2722
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v3

    .line 2724
    :cond_3
    const/4 v10, 0x0

    .line 2725
    .local v10, needToChange:Z
    if-nez v2, :cond_5

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    if-nez v13, :cond_5

    :cond_4
    if-nez v11, :cond_6

    .line 2726
    :cond_5
    const/4 v10, 0x1

    .line 2729
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    move/from16 v0, p2

    if-eq v0, v13, :cond_7

    .line 2730
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 2732
    :cond_7
    if-eqz v2, :cond_a

    const/4 v9, 0x1

    .line 2733
    .local v9, isToCP:Z
    :goto_1
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    .line 2736
    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v13

    sget-object v14, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v13, v14, :cond_f

    .line 2737
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2738
    .local v12, top4Animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v5, 0x0

    .line 2740
    .local v5, addListener:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    const/4 v13, 0x4

    if-ge v8, v13, :cond_b

    .line 2741
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v13, v13, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v13, v14}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 2742
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v13, v13, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v13, v14}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    const/4 v15, 0x0

    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2746
    .local v4, a:Landroid/animation/ObjectAnimator;
    if-nez v5, :cond_8

    .line 2747
    const/4 v5, 0x1

    .line 2748
    new-instance v13, Lcom/android/launcher2/HomeFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v9}, Lcom/android/launcher2/HomeFragment$11;-><init>(Lcom/android/launcher2/HomeFragment;IZ)V

    invoke-virtual {v4, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2756
    :cond_8
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2740
    .end local v4           #a:Landroid/animation/ObjectAnimator;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2732
    .end local v5           #addListener:Z
    .end local v8           #i:I
    .end local v9           #isToCP:Z
    .end local v12           #top4Animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2760
    .restart local v5       #addListener:Z
    .restart local v8       #i:I
    .restart local v9       #isToCP:Z
    .restart local v12       #top4Animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_b
    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 2761
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v13}, Lcom/android/launcher2/HomeFragment;->changeTop4IconContainer(IZZ)V

    .line 2763
    :cond_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d

    .line 2764
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v12}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0xc8

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2766
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 2773
    .end local v5           #addListener:Z
    .end local v8           #i:I
    .end local v12           #top4Animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v13

    sget-object v14, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v13, v14, :cond_e

    .line 2774
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    iget-boolean v13, v13, Lcom/android/launcher2/HomeEditBar;->CP_dragFromMenu:Z

    if-eqz v13, :cond_10

    .line 2784
    :cond_e
    :goto_4
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    goto/16 :goto_0

    .line 2768
    :cond_f
    if-eqz v10, :cond_d

    .line 2769
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v13}, Lcom/android/launcher2/HomeFragment;->changeTop4IconContainer(IZZ)V

    goto :goto_3

    .line 2776
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v14, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 2778
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/high16 v14, 0x7f05

    invoke-static {v13, v14}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v6

    .line 2779
    .local v6, animator:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v6, v13}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2780
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    goto :goto_4

    .line 2742
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x70t 0x41t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private changeTop4IconContainer(IZZ)V
    .locals 26
    .parameter "CPType"
    .parameter "isToCP"
    .parameter "withAni"

    .prologue
    .line 2614
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2615
    .local v25, top4Animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v20, 0x0

    .line 2617
    .local v20, hotseatCellIdx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 2619
    if-eqz p2, :cond_2

    .line 2620
    const-string v2, "Launcher.HomeFragment"

    const-string v4, "[CP] changeTop4Icon : not CP -> CP"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ContextualPageManager;->getHotseatItems(I)Ljava/util/ArrayList;

    move-result-object v21

    .line 2623
    .local v21, hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_6

    .line 2624
    new-instance v23, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2625
    .local v23, item:Lcom/android/launcher2/HomeShortcutItem;
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v4, v2, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v2, v2, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    .local v19, cpName:Landroid/content/ComponentName;
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 2628
    .local v22, intent:Landroid/content/Intent;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2629
    new-instance v24, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct/range {v24 .. v24}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 2630
    .local v24, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 2631
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2632
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2633
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 2635
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 2636
    const-string v2, "Launcher.HomeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CP] changeTop4IconContainer - mIcon is null. Item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Component : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2638
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v3

    .line 2639
    .local v3, shortcut:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const-wide/16 v4, -0x65

    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2640
    check-cast v3, Lcom/android/launcher2/AppIconView;

    .end local v3           #shortcut:Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 2642
    if-eqz p3, :cond_0

    .line 2643
    add-int/lit8 v20, v20, 0x1

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2647
    .local v18, a:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2654
    .end local v6           #i:I
    .end local v18           #a:Landroid/animation/ObjectAnimator;
    .end local v19           #cpName:Landroid/content/ComponentName;
    .end local v21           #hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    .end local v22           #intent:Landroid/content/Intent;
    .end local v23           #item:Lcom/android/launcher2/HomeShortcutItem;
    .end local v24           #titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :cond_2
    const-string v2, "Launcher.HomeFragment"

    const-string v4, "[CP] changeTop4Icon : CP -> not CP"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    .line 2657
    .local v17, N:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    move/from16 v0, v17

    if-ge v6, v0, :cond_6

    .line 2658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/HomeItem;

    .line 2659
    .local v23, item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, v23

    if-eq v2, v0, :cond_4

    .line 2660
    move-object/from16 v0, v23

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v7, -0x65

    cmp-long v2, v4, v7

    if-nez v2, :cond_4

    .line 2661
    const/4 v3, 0x0

    .line 2662
    .restart local v3       #shortcut:Landroid/view/View;
    move-object/from16 v0, v23

    instance-of v2, v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v2, :cond_5

    move-object/from16 v2, v23

    .line 2663
    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v3

    .line 2667
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v23

    iget-wide v9, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, v23

    iget v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v23

    iget v13, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v16}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2668
    check-cast v3, Lcom/android/launcher2/AppIconView;

    .end local v3           #shortcut:Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 2670
    if-eqz p3, :cond_4

    .line 2671
    add-int/lit8 v20, v20, 0x1

    .line 2672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2676
    .restart local v18       #a:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2657
    .end local v18           #a:Landroid/animation/ObjectAnimator;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 2664
    .restart local v3       #shortcut:Landroid/view/View;
    :cond_5
    move-object/from16 v0, v23

    instance-of v2, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v2, :cond_3

    move-object/from16 v2, v23

    .line 2665
    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeFragment;->createFolder(Lcom/android/launcher2/HomeItem;)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 2683
    .end local v3           #shortcut:Landroid/view/View;
    .end local v17           #N:I
    .end local v23           #item:Lcom/android/launcher2/HomeItem;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v4, :cond_7

    .line 2684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 2686
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->top4AnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2692
    :cond_8
    return-void

    .line 2644
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2672
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private completeAdd(Lcom/android/launcher2/HomeFragment$PendingAddArguments;)Z
    .locals 10
    .parameter "args"

    .prologue
    .line 381
    const/4 v9, 0x0

    .line 382
    .local v9, result:Z
    iget v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 413
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 414
    return v9

    .line 384
    :pswitch_1
    iget-object v1, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HomeFragment;->completeAddApplication(Landroid/content/Intent;JIII)V

    goto :goto_0

    .line 388
    :pswitch_2
    iget-object v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 391
    :pswitch_3
    iget-object v1, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/HomeFragment;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 393
    const/4 v9, 0x1

    .line 394
    goto :goto_0

    .line 396
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v8

    .line 397
    .local v8, item:Lcom/android/launcher2/HomeShortcutItem;
    invoke-virtual {p0, v8}, Lcom/android/launcher2/HomeFragment;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;)V

    goto :goto_0

    .line 400
    .end local v8           #item:Lcom/android/launcher2/HomeShortcutItem;
    :pswitch_5
    iget-object v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_0

    .line 403
    :pswitch_6
    iget-object v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 404
    .local v7, appWidgetId:I
    iget-wide v0, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->container:J

    iget v2, p1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->screen:I

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/android/launcher2/HomeFragment;->completeAddAppWidget(IJI)V

    .line 405
    const/4 v9, 0x1

    .line 406
    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private completeAddAppWidget(IJI)V
    .locals 28
    .parameter "appWidgetId"
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    .line 980
    .local v22, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v22, :cond_1

    .line 984
    const-string v5, "Launcher.HomeFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App widget info is null. AppWidgetID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 991
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v26

    .line 996
    .local v26, spanXY:[I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 997
    .local v9, cellXY:[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v0, v5, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v27, v0

    .line 998
    .local v27, touchXY:[I
    const/16 v23, 0x0

    .line 999
    .local v23, foundCellSpan:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ltz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ltz v5, :cond_3

    .line 1000
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v6, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v6, v9, v5

    .line 1001
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v6, v6, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v6, v9, v5

    .line 1002
    const/16 v23, 0x1

    .line 1012
    :goto_1
    if-nez v23, :cond_6

    .line 1013
    const/4 v5, -0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_2

    .line 1016
    new-instance v5, Lcom/android/launcher2/HomeFragment$4;

    const-string v6, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v6, v1}, Lcom/android/launcher2/HomeFragment$4;-><init>(Lcom/android/launcher2/HomeFragment;Ljava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment$4;->start()V

    .line 1023
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    goto :goto_0

    .line 1003
    :cond_3
    if-eqz v27, :cond_5

    .line 1005
    const/4 v5, 0x0

    aget v5, v27, v5

    const/4 v6, 0x1

    aget v6, v27, v6

    const/4 v7, 0x0

    aget v7, v26, v7

    const/4 v8, 0x1

    aget v8, v26, v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v25

    .line 1007
    .local v25, result:[I
    if-eqz v25, :cond_4

    const/16 v23, 0x1

    .line 1008
    :goto_2
    goto :goto_1

    .line 1007
    :cond_4
    const/16 v23, 0x0

    goto :goto_2

    .line 1009
    .end local v25           #result:[I
    :cond_5
    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v6, 0x1

    aget v6, v26, v6

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v23

    goto :goto_1

    .line 1028
    :cond_6
    new-instance v11, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move/from16 v0, p1

    invoke-direct {v11, v5, v0}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    .line 1029
    .local v11, launcherInfo:Lcom/android/launcher2/HomeWidgetItem;
    const/4 v5, 0x0

    aget v5, v26, v5

    iput v5, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1030
    const/4 v5, 0x1

    aget v5, v26, v5

    iput v5, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v5, 0x0

    aget v15, v9, v5

    const/4 v5, 0x1

    aget v16, v9, v5

    const/16 v17, 0x0

    move-wide/from16 v12, p2

    move/from16 v14, p4

    invoke-static/range {v10 .. v17}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1035
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    if-nez v5, :cond_0

    .line 1037
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v11, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1039
    iget-object v5, v11, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1040
    iget-object v5, v11, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v11}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v24

    .line 1042
    .local v24, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget-object v5, v11, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v24

    iget v8, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v10}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 1045
    iget-object v5, v11, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v6, Lcom/android/launcher2/HomeFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11, v4}, Lcom/android/launcher2/HomeFragment$5;-><init>(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v13, v11, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    aget v17, v9, v5

    const/4 v5, 0x1

    aget v18, v9, v5

    iget v0, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v19, v0

    iget v0, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->isWorkspaceLocked()Z

    move-result v21

    move-wide/from16 v14, p2

    move/from16 v16, p4

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1067
    iget-object v5, v11, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/HomeFragment;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 29
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 921
    const-string v5, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0, v7}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v11

    .line 924
    .local v11, info:Lcom/android/launcher2/HomeShortcutItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v28

    .line 926
    .local v28, view:Landroid/view/View;
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gez v5, :cond_6

    .line 927
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 928
    .local v9, cellXY:[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v0, v5, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v27, v0

    .line 929
    .local v27, touchXY:[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 931
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    const/16 v23, 0x0

    .line 934
    .local v23, foundCellSpan:Z
    if-ltz p5, :cond_2

    if-ltz p6, :cond_2

    .line 935
    const/4 v5, 0x0

    aput p5, v9, v5

    .line 936
    const/4 v5, 0x1

    aput p6, v9, v5

    .line 937
    const/16 v23, 0x1

    .line 946
    :goto_1
    if-nez v23, :cond_5

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    goto :goto_0

    .line 938
    :cond_2
    if-eqz v27, :cond_4

    .line 940
    const/4 v5, 0x0

    aget v5, v27, v5

    const/4 v6, 0x1

    aget v6, v27, v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v26

    .line 941
    .local v26, result:[I
    if-eqz v26, :cond_3

    const/16 v23, 0x1

    .line 942
    :goto_2
    goto :goto_1

    .line 941
    :cond_3
    const/16 v23, 0x0

    goto :goto_2

    .line 943
    .end local v26           #result:[I
    :cond_4
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v23

    goto :goto_1

    .line 950
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v5, 0x0

    aget v15, v9, v5

    const/4 v5, 0x1

    aget v16, v9, v5

    const/16 v17, 0x0

    move-wide/from16 v12, p2

    move/from16 v14, p4

    invoke-static/range {v10 .. v17}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 951
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    if-nez v5, :cond_0

    .line 952
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x0

    aget v17, v9, v5

    const/4 v5, 0x1

    aget v18, v9, v5

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->isWorkspaceLocked()Z

    move-result v21

    move-object/from16 v13, v28

    move-wide/from16 v14, p2

    move/from16 v16, p4

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_0

    .line 957
    .end local v4           #layout:Lcom/android/launcher2/CellLayout;
    .end local v9           #cellXY:[I
    .end local v23           #foundCellSpan:Z
    .end local v27           #touchXY:[I
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v22

    .line 958
    .local v22, count:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 959
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/CellLayout;

    .line 960
    .local v25, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->findFolderIcon(J)Lcom/android/launcher2/FolderIconView;

    move-result-object v12

    .line 961
    .local v12, icon:Lcom/android/launcher2/FolderIconView;
    if-eqz v12, :cond_7

    .line 962
    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v13, v28

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher2/FolderIconView;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/16 v20, 0x0

    move-object v14, v11

    move-wide/from16 v15, p2

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p5

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto/16 :goto_0

    .line 958
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_3
.end method

.method private createWorkspaceChildren()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 755
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    .line 756
    .local v4, screenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 757
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f030041

    iget-object v8, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 760
    .local v0, cell:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 761
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 762
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 765
    .restart local v3       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v0, v3}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/launcher2/WorkspacePages;->pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setEmptyMessageVisibility(I)V

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 766
    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    .line 769
    .end local v0           #cell:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 770
    .local v1, homeScreenIndex:I
    if-ltz v1, :cond_3

    if-lt v1, v4, :cond_4

    .line 771
    :cond_3
    if-gez v1, :cond_5

    move v1, v6

    .line 772
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 774
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 775
    return-void

    .line 771
    :cond_5
    add-int/lit8 v1, v4, -0x1

    goto :goto_2
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "activityName"

    .prologue
    .line 1946
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1948
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1950
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1951
    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1952
    .local v1, iconResId:I
    if-eqz v1, :cond_0

    .line 1953
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1954
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 1966
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v5           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 1957
    :catch_0
    move-exception v0

    .line 1959
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher.HomeFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1966
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1961
    :catch_1
    move-exception v3

    .line 1963
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "Launcher.HomeFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFolderById(J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2
    .parameter "id"

    .prologue
    .line 3145
    sget-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    return-object v0
.end method

.method private isFavoritesInNormalMode()Z
    .locals 2

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 751
    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider;->isFavoritesInNormalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 1516
    :cond_0
    return-void
.end method

.method private performOnHomePressed()V
    .locals 5

    .prologue
    const v4, 0x7f070043

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 596
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 598
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 603
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 610
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_4

    .line 611
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 613
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 614
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 615
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeFragment;->showWorkspace(Z)V

    .line 623
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 624
    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeKeyPress:Z

    .line 625
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setDismissCling_Key(Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissOrNextWorkspaceCling(Landroid/view/View;)V

    goto :goto_0

    .line 618
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 621
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 1504
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1505
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1507
    return-void
.end method

.method private resetAddInfo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1243
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 1244
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1245
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1246
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1247
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1248
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedState"

    .prologue
    const-wide/16 v12, -0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 522
    if-nez p1, :cond_0

    .line 558
    :goto_0
    return-void

    .line 526
    :cond_0
    const-string v7, "launcher.current_screen"

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 527
    .local v0, currentScreen:I
    if-le v0, v8, :cond_1

    .line 528
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 531
    :cond_1
    const-string v7, "launcher.add_container"

    invoke-virtual {p1, v7, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 532
    .local v1, pendingAddContainer:J
    const-string v7, "launcher.add_screen"

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 534
    .local v3, pendingAddScreen:I
    cmp-long v7, v1, v12

    if-eqz v7, :cond_2

    if-le v3, v8, :cond_2

    .line 535
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide v1, v7, Lcom/android/launcher2/HomeItem;->container:J

    .line 536
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v7, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 537
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-string v8, "launcher.add_cell_x"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 538
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-string v8, "launcher.add_cell_y"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 539
    iput-boolean v9, p0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    .line 541
    :cond_2
    const-string v7, "launcher.workspace_folder_bundle"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/HomeFragment;->mFolderBundle:Landroid/os/Bundle;

    .line 542
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mFolderBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 546
    const-string v7, "launcher.workspace_folder_darken_layer_visibility"

    invoke-virtual {p1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 547
    .local v5, visibility:I
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 548
    if-eq v5, v11, :cond_3

    .line 549
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0002

    invoke-virtual {v7, v8, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 550
    .local v4, targetAlpha:F
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    .line 553
    .end local v4           #targetAlpha:F
    .end local v5           #visibility:I
    :cond_3
    const-string v7, "launcher.workspace_was_in_quickview"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 554
    .local v6, wasInQuickView:Z
    if-eqz v6, :cond_4

    .line 555
    invoke-virtual {p0, p1, v10}, Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V

    .line 557
    :cond_4
    iput-boolean v10, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    goto :goto_0
.end method

.method private sendAdvanceMessage(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1076
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1077
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1078
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceSentTime:J

    .line 1080
    return-void
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 660
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 661
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Workspace;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 662
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    .line 664
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/QuickViewWorkspace;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    .line 665
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropLayout:Landroid/widget/LinearLayout;

    .line 666
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DeleteDropTarget;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    .line 669
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragLayer;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 671
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BlendedDarkenView;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    .line 672
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 675
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 676
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 681
    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 684
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    .line 686
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditButtonListener:Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditButtonListener:Lcom/android/launcher2/HomeFragment$HomeEditTabClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeEditBar;

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    .line 693
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    .line 694
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 695
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/AllAppsKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher2/AllAppsKeyEventListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 700
    :cond_2
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_4

    .line 701
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    .line 702
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIconDivider:Landroid/view/View;

    .line 703
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/AllAppsKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher2/AllAppsKeyEventListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 708
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIconDivider:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 709
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditIconDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    .line 714
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 715
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/HomeFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeFragment$2;-><init>(Lcom/android/launcher2/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    .line 727
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 729
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 731
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->createWorkspaceChildren()V

    .line 732
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->isFavoritesInNormalMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mFavoritesModeIsNormal:Z

    .line 734
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_6

    .line 735
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 736
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    if-eqz v0, :cond_7

    .line 737
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 747
    :cond_7
    return-void
.end method

.method private unbindWorkspaceAndHotseatItems()V
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItems()V

    .line 1526
    :cond_0
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    .line 1994
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1995
    .local v0, button:Landroid/widget/ImageView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeFragment;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1997
    .local v1, toolbarIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2000
    if-nez v1, :cond_1

    .line 2001
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2007
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_1
    return-object v2

    .line 2003
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2007
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 8
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1972
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1973
    .local v0, button:Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeFragment;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1974
    .local v3, toolbarIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1975
    .local v2, r:Landroid/content/res/Resources;
    const v6, 0x7f0c0035

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1976
    .local v4, w:I
    const v6, 0x7f0c0036

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1979
    .local v1, h:I
    if-nez v3, :cond_0

    .line 1980
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1981
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1982
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1987
    :goto_0
    return-object v5

    .line 1985
    :cond_0
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1986
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1987
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;JI[I[I)V
    .locals 5
    .parameter "info"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    const/4 v4, 0x0

    .line 1346
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1347
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide p2, v2, Lcom/android/launcher2/HomeItem;->container:J

    .line 1348
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput p4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput p4, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1349
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-object p6, v2, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1350
    if-eqz p5, :cond_0

    .line 1351
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    aget v3, p5, v4

    iput v3, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1352
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v3, 0x1

    aget v3, p5, v3

    iput v3, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1357
    .local v0, appWidgetId:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1358
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/HomeFragment;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    :goto_0
    return-void

    .line 1359
    :catch_0
    move-exception v1

    .line 1360
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "Launcher.HomeFragment"

    const-string v3, "Problem binding widget. This should only happen when installed outside of /system/app."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1362
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Not installed with permissions needed for binding widgets"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1252
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1255
    .local v0, appWidgetId:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeFragment;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V

    .line 1256
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V
    .locals 15
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 1259
    iget-object v12, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 1261
    .local v1, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_4

    iget-object v12, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v12, :cond_4

    .line 1263
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v5, intent:Landroid/content/Intent;
    iget-object v12, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1265
    const-string v12, "appWidgetId"

    move/from16 v0, p1

    invoke-virtual {v5, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1266
    if-eqz p2, :cond_0

    .line 1267
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    if-eqz v12, :cond_0

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1268
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    .line 1273
    .local v9, mimeType:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/HomePendingWidget;->configurationData:Landroid/os/Parcelable;

    check-cast v2, Landroid/content/ClipData;

    .line 1274
    .local v2, clipData:Landroid/content/ClipData;
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 1275
    .local v3, clipDesc:Landroid/content/ClipDescription;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v12

    if-ge v4, v12, :cond_0

    .line 1276
    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1277
    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 1278
    .local v7, item:Landroid/content/ClipData$Item;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1279
    .local v10, stringData:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 1280
    .local v11, uriData:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1281
    .local v6, intentData:Landroid/content/Intent;
    const-string v8, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    .line 1283
    .local v8, key:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 1284
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1296
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #clipDesc:Landroid/content/ClipDescription;
    .end local v4           #i:I
    .end local v6           #intentData:Landroid/content/Intent;
    .end local v7           #item:Landroid/content/ClipData$Item;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #stringData:Ljava/lang/CharSequence;
    .end local v11           #uriData:Landroid/net/Uri;
    :cond_0
    :goto_1
    const/4 v12, 0x5

    invoke-virtual {p0, v5, v12}, Lcom/android/launcher2/HomeFragment;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1301
    .end local v5           #intent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 1285
    .restart local v2       #clipData:Landroid/content/ClipData;
    .restart local v3       #clipDesc:Landroid/content/ClipDescription;
    .restart local v4       #i:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #intentData:Landroid/content/Intent;
    .restart local v7       #item:Landroid/content/ClipData$Item;
    .restart local v8       #key:Ljava/lang/String;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v10       #stringData:Ljava/lang/CharSequence;
    .restart local v11       #uriData:Landroid/net/Uri;
    :cond_1
    if-eqz v6, :cond_2

    .line 1286
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1287
    :cond_2
    if-eqz v10, :cond_0

    .line 1288
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_1

    .line 1275
    .end local v6           #intentData:Landroid/content/Intent;
    .end local v7           #item:Landroid/content/ClipData$Item;
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #stringData:Ljava/lang/CharSequence;
    .end local v11           #uriData:Landroid/net/Uri;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1299
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #clipDesc:Landroid/content/ClipDescription;
    .end local v4           #i:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, p1

    invoke-direct {p0, v0, v12, v13, v14}, Lcom/android/launcher2/HomeFragment;->completeAddAppWidget(IJI)V

    goto :goto_2
.end method

.method public addPage()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3044
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030041

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3046
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3047
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3048
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 3049
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3055
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_1

    .line 3056
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v4}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3057
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3058
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v3}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 3066
    :goto_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_2

    .line 3067
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v4}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    .line 3070
    :goto_1
    return-void

    .line 3061
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3062
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3063
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    goto :goto_0

    .line 3069
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method addSamsungAppWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;JI[I[I)V
    .locals 6
    .parameter "pending"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    const/4 v5, 0x0

    .line 1396
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1397
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide p2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 1398
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput p4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput p4, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1399
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-object p6, v1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1400
    if-eqz p5, :cond_0

    .line 1401
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    aget v2, p5, v5

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1402
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1406
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungAppWidgetItem;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/HomeFragment;->addSamsungWidget(Lcom/android/launcher2/SamsungAppWidgetItem;JI)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :goto_0
    return-void

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "Launcher.HomeFragment"

    const-string v2, "Problem binding samsung widget. This should only happen when running in a separate process"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Widget is not running in the same process"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/android/launcher2/SamsungAppWidgetItem;JI)V
    .locals 34
    .parameter "item"
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v30

    .line 1422
    .local v30, packageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;)Lcom/android/launcher2/SamsungAppWidgetInfo;

    move-result-object v17

    .line 1426
    .local v17, homeItem:Lcom/android/launcher2/SamsungAppWidgetInfo;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v10

    .line 1428
    .local v10, layout:Lcom/android/launcher2/CellLayout;
    const/4 v4, 0x2

    new-array v9, v4, [I

    fill-array-data v9, :array_0

    .line 1429
    .local v9, spanXY:[I
    const/16 v29, 0x2

    .line 1430
    .local v29, land:I
    const/16 v31, 0x1

    .line 1431
    .local v31, port:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/launcher2/SamsungAppWidgetItem;->getWidth(I)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/launcher2/SamsungAppWidgetItem;->getHeight(I)I

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/SamsungAppWidgetItem;->getWidth(I)I

    move-result v7

    const/4 v8, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SamsungAppWidgetItem;->getHeight(I)I

    move-result v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSamsungWidget(IIII[I)[I

    .line 1437
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 1438
    .local v15, cellXY:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v0, v4, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v33, v0

    .line 1439
    .local v33, touchXY:[I
    const/16 v28, 0x0

    .line 1440
    .local v28, foundCellSpan:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v4, v4, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ltz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v4, v4, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ltz v4, :cond_1

    .line 1441
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v5, v15, v4

    .line 1442
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v5, v15, v4

    .line 1443
    const/16 v28, 0x1

    .line 1453
    :goto_0
    if-nez v28, :cond_4

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    .line 1482
    :cond_0
    :goto_1
    return-void

    .line 1444
    :cond_1
    if-eqz v33, :cond_3

    .line 1446
    const/4 v4, 0x0

    aget v11, v33, v4

    const/4 v4, 0x1

    aget v12, v33, v4

    const/4 v4, 0x0

    aget v13, v9, v4

    const/4 v4, 0x1

    aget v14, v9, v4

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v32

    .line 1448
    .local v32, result:[I
    if-eqz v32, :cond_2

    const/16 v28, 0x1

    .line 1449
    :goto_2
    goto :goto_0

    .line 1448
    :cond_2
    const/16 v28, 0x0

    goto :goto_2

    .line 1450
    .end local v32           #result:[I
    :cond_3
    const/4 v4, 0x0

    aget v4, v9, v4

    const/4 v5, 0x1

    aget v5, v9, v5

    invoke-virtual {v10, v15, v4, v5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v28

    goto :goto_0

    .line 1469
    :cond_4
    const/4 v4, 0x0

    aget v4, v9, v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1470
    const/4 v4, 0x1

    aget v4, v9, v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1472
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/4 v4, 0x0

    aget v21, v15, v4

    const/4 v4, 0x1

    aget v22, v15, v4

    const/16 v23, 0x0

    move-wide/from16 v18, p2

    move/from16 v20, p4

    invoke-static/range {v16 .. v23}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1475
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher2/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    aget v23, v15, v4

    const/4 v4, 0x1

    aget v24, v15, v4

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->isWorkspaceLocked()Z

    move-result v27

    move-wide/from16 v20, p2

    move/from16 v22, p4

    invoke-virtual/range {v18 .. v27}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    move/from16 v0, p4

    if-ne v4, v0, :cond_0

    .line 1480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    goto/16 :goto_1

    .line 1428
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .parameter "hostView"
    .parameter "appWidgetInfo"

    .prologue
    .line 1144
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1146
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0           #v:Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1149
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    goto :goto_0
.end method

.method public bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 22
    .parameter "item"

    .prologue
    .line 2247
    const-wide/16 v20, 0x0

    .line 2251
    .local v20, start:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2253
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v4, v2, Lcom/android/launcher2/PagedView;->mCellCountX:I

    if-gt v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    iget v4, v2, Lcom/android/launcher2/PagedView;->mCellCountY:I

    if-le v3, v4, :cond_1

    .line 2254
    :cond_0
    const-string v3, "Launcher.HomeFragment"

    const-string v4, "Attempted to bind a widget larger than what will fit. Removing."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2309
    :goto_0
    return-void

    .line 2259
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move/from16 v17, v0

    .line 2260
    .local v17, appWidgetId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v18

    .line 2261
    .local v18, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v18, :cond_2

    .line 2265
    const-string v3, "Launcher.HomeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App widget info is null. AppWidgetID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2273
    :cond_2
    const-string v3, "Launcher.HomeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current item.hostView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2279
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-nez v3, :cond_4

    .line 2280
    const-string v3, "Launcher.HomeFragment"

    const-string v4, "mAppWidgetHost is null. Was HomeFragment.onDestroy() called previously?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2283
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2285
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2286
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v19

    .line 2289
    .local v19, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 2292
    .end local v19           #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v3, :cond_7

    .line 2293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v6

    .line 2294
    .local v6, CPid:I
    const/4 v3, -0x1

    if-le v6, v3, :cond_6

    .line 2295
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2303
    .end local v6           #CPid:I
    :cond_6
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->requestLayout()V

    goto/16 :goto_0

    .line 2299
    :cond_7
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    const/16 v16, 0x0

    move-object v7, v2

    invoke-virtual/range {v7 .. v16}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1
.end method

.method public bindAppWidget_CP(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3216
    .local p1, homewidgetItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3217
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3218
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    .line 3219
    .local v2, widget:Lcom/android/launcher2/HomeWidgetItem;
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3217
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3222
    :cond_1
    iget-boolean v3, v2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, p2, :cond_0

    .line 3223
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_1

    .line 3226
    .end local v2           #widget:Lcom/android/launcher2/HomeWidgetItem;
    :cond_2
    return-void
.end method

.method public bindFolders(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2169
    .local p1, folders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    sget-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2170
    sget-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2171
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->restoreOpenFolder(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2181
    :cond_0
    return-void
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2412
    .local p1, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    .line 2415
    :cond_0
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2401
    .local p1, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->updateShortcuts(Ljava/util/List;)V

    .line 2404
    :cond_0
    return-void
.end method

.method public bindItems(Ljava/util/List;II)V
    .locals 21
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2074
    .local p1, shortcuts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2075
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    if-nez v2, :cond_0

    .line 2163
    :goto_0
    return-void

    .line 2077
    :cond_0
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    if-nez v4, :cond_1

    .line 2078
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    .line 2080
    :cond_1
    move/from16 v19, p2

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_f

    .line 2081
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/HomeItem;

    .line 2084
    .local v20, item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v9, -0x65

    cmp-long v4, v4, v9

    if-nez v4, :cond_4

    .line 2085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v4, :cond_3

    .line 2080
    :cond_2
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 2090
    :cond_3
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-gez v4, :cond_6

    .line 2091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 2098
    :cond_4
    :goto_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v4, :cond_a

    .line 2099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v6

    .line 2100
    .local v6, CPid:I
    const/4 v4, -0x1

    if-le v6, v4, :cond_2

    .line 2101
    sget-object v4, Lcom/android/launcher2/HomeFragment$12;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move-object/from16 v4, v20

    .line 2104
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v3

    .line 2105
    .local v3, shortcut:Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    if-eq v4, v6, :cond_7

    .line 2107
    :cond_5
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2109
    check-cast v3, Lcom/android/launcher2/AppIconView;

    .end local v3           #shortcut:Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->showBadge()V

    goto/16 :goto_2

    .line 2093
    .end local v6           #CPid:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 2094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    goto/16 :goto_3

    .line 2111
    .restart local v3       #shortcut:Landroid/view/View;
    .restart local v6       #CPid:I
    :cond_7
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    .line 2112
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    .line 2113
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    goto/16 :goto_2

    .line 2117
    .end local v3           #shortcut:Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFragment;->createFolder(Lcom/android/launcher2/HomeItem;)Landroid/view/View;

    move-result-object v8

    .line 2118
    .local v8, folder:Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    if-eq v4, v6, :cond_9

    .line 2120
    :cond_8
    move-object/from16 v0, v20

    iget-wide v9, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v7, v2

    move v11, v6

    invoke-virtual/range {v7 .. v16}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_2

    .line 2123
    :cond_9
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    .line 2124
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    .line 2125
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    goto/16 :goto_2

    .line 2131
    .end local v6           #CPid:I
    .end local v8           #folder:Landroid/view/View;
    :cond_a
    sget-object v4, Lcom/android/launcher2/HomeFragment$12;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v4, v20

    .line 2134
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v3

    .line 2135
    .restart local v3       #shortcut:Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v4, v5, :cond_c

    .line 2137
    :cond_b
    move-object/from16 v0, v20

    iget-wide v11, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v9, v2

    move-object v10, v3

    invoke-virtual/range {v9 .. v18}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2139
    check-cast v3, Lcom/android/launcher2/AppIconView;

    .end local v3           #shortcut:Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->showBadge()V

    goto/16 :goto_2

    .line 2141
    .restart local v3       #shortcut:Landroid/view/View;
    :cond_c
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    .line 2142
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    .line 2143
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    goto/16 :goto_2

    .line 2147
    .end local v3           #shortcut:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFragment;->createFolder(Lcom/android/launcher2/HomeItem;)Landroid/view/View;

    move-result-object v8

    .line 2148
    .restart local v8       #folder:Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v4, v5, :cond_e

    .line 2150
    :cond_d
    move-object/from16 v0, v20

    iget-wide v9, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v7, v2

    invoke-virtual/range {v7 .. v16}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_2

    .line 2153
    :cond_e
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    .line 2154
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    .line 2155
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    goto/16 :goto_2

    .line 2162
    .end local v8           #folder:Landroid/view/View;
    .end local v20           #item:Lcom/android/launcher2/HomeItem;
    :cond_f
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->requestLayout()V

    goto/16 :goto_0

    .line 2101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2131
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bindItems_CP(Ljava/util/List;I)V
    .locals 20
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3178
    .local p1, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3179
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    if-nez v2, :cond_1

    .line 3212
    :cond_0
    return-void

    .line 3181
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    .line 3183
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    .line 3184
    .local v17, N:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 3185
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/HomeItem;

    .line 3187
    .local v19, item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_2

    .line 3189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3184
    :cond_2
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 3192
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v6

    .line 3193
    .local v6, CPid:I
    const/4 v4, -0x1

    if-le v6, v4, :cond_2

    .line 3194
    sget-object v4, Lcom/android/launcher2/HomeFragment$12;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object/from16 v4, v19

    .line 3197
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v3

    .line 3198
    .local v3, shortcut:Landroid/view/View;
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3200
    check-cast v3, Lcom/android/launcher2/AppIconView;

    .end local v3           #shortcut:Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->showBadge()V

    goto :goto_1

    .line 3203
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFragment;->createFolder(Lcom/android/launcher2/HomeItem;)Landroid/view/View;

    move-result-object v8

    .line 3204
    .local v8, folder:Landroid/view/View;
    move-object/from16 v0, v19

    iget-wide v9, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v19

    iget v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v7, v2

    move v11, v6

    invoke-virtual/range {v7 .. v16}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1

    .line 3194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V
    .locals 23
    .parameter "item"

    .prologue
    .line 2318
    const-wide/16 v21, 0x0

    .line 2322
    .local v21, start:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2324
    .local v3, workspace:Lcom/android/launcher2/Workspace;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 2325
    .local v18, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v20

    .line 2327
    .local v20, packageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const-string v8, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/SamsungAppWidgetItem;

    move-result-object v19

    .line 2330
    .local v19, info:Lcom/android/launcher2/SamsungAppWidgetItem;
    if-nez v19, :cond_0

    .line 2331
    const-string v4, "Launcher.HomeFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find Samsung widget "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :goto_0
    return-void

    .line 2335
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;Lcom/android/launcher2/SamsungAppWidgetInfo;)Lcom/android/launcher2/SamsungAppWidgetInfo;

    .line 2337
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 2339
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v4, :cond_2

    .line 2340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v7

    .line 2341
    .local v7, CPid:I
    const/4 v4, -0x1

    if-le v7, v4, :cond_1

    .line 2342
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2350
    .end local v7           #CPid:I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 2353
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->requestLayout()V

    goto :goto_0

    .line 2346
    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1
.end method

.method public bindSamsungAppWidget_CP(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungAppWidgetInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3230
    .local p1, samsungAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SamsungAppWidgetInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3231
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3232
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .line 3233
    .local v2, widget:Lcom/android/launcher2/SamsungAppWidgetInfo;
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3231
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3236
    :cond_1
    iget-boolean v3, v2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, p2, :cond_0

    .line 3237
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->bindSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    goto :goto_1

    .line 3240
    .end local v2           #widget:Lcom/android/launcher2/SamsungAppWidgetInfo;
    :cond_2
    return-void
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->bindWidgetsAfterConfigChange()V

    .line 2365
    :cond_0
    return-void
.end method

.method cancelRemovePage()V
    .locals 1

    .prologue
    .line 2813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    .line 2814
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 2815
    return-void
.end method

.method public closeQuickViewWorkspace(Z)V
    .locals 3
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 2550
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2592
    :cond_0
    :goto_0
    return-void

    .line 2553
    :cond_1
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_2

    .line 2554
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/HomeFragment;->changeTop4Icon(Landroid/view/View;I)V

    .line 2555
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2556
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->close()V

    .line 2557
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    .line 2558
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/HomeFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/HomeFragment$10;-><init>(Lcom/android/launcher2/HomeFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2590
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 2591
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateVisiblePages()Z

    goto :goto_0
.end method

.method public closeQuickViewWorkspaceStartAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x168

    const/high16 v7, 0x3f80

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2507
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    .line 2512
    .local v1, newWorkspace:I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2514
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 2517
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 2518
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 2519
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_1

    .line 2520
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2521
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 2522
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2523
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2528
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 2529
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 2530
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 2531
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 2533
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 2534
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2535
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2536
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2537
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2541
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher2/DeleteDropTarget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2542
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2544
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 2545
    return-void
.end method

.method closeSystemDialogs()V
    .locals 3

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    .line 1181
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1182
    .local v1, manager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1187
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-static {v0, v1}, Lcom/android/launcher2/MotionDialogOffFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1188
    invoke-static {v0, v1}, Lcom/android/launcher2/MotionDialogOnFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1189
    invoke-static {v0, v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1190
    invoke-static {v0, v1}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 1192
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1195
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    .line 1196
    return-void
.end method

.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2839
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 2840
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2841
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2842
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2844
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 2845
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 2846
    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2829
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050005

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 2830
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2831
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2832
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2834
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 2835
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 2836
    return-void
.end method

.method completeAddApplication(Landroid/content/Intent;JIII)V
    .locals 15
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 853
    iget-object v14, p0, Lcom/android/launcher2/HomeFragment;->mTmpAddItemCellCoordinates:[I

    .line 854
    .local v14, cellXY:[I
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/HomeFragment;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .line 857
    .local v5, layout:Lcom/android/launcher2/CellLayout;
    if-ltz p5, :cond_1

    if-ltz p6, :cond_1

    .line 858
    const/4 v3, 0x0

    aput p5, v14, v3

    .line 859
    const/4 v3, 0x1

    aput p6, v14, v3

    .line 865
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v3, v6, v0, v7}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v4

    .line 867
    .local v4, info:Lcom/android/launcher2/HomeShortcutItem;
    if-eqz v4, :cond_2

    .line 868
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/high16 v6, 0x1020

    invoke-virtual {v4, v3, v6}, Lcom/android/launcher2/HomeShortcutItem;->setActivity(Landroid/content/ComponentName;I)V

    .line 870
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/android/launcher2/HomeItem;->container:J

    .line 871
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    aget v9, v14, v6

    const/4 v6, 0x1

    aget v10, v14, v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->isWorkspaceLocked()Z

    move-result v11

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher2/Workspace;->addApplicationShortcut(Lcom/android/launcher2/HomeShortcutItem;Lcom/android/launcher2/CellLayout;JIIIZII)V

    .line 876
    .end local v4           #info:Lcom/android/launcher2/HomeShortcutItem;
    :goto_0
    return-void

    .line 860
    :cond_1
    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {v5, v14, v3, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    goto :goto_0

    .line 874
    .restart local v4       #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_2
    const-string v3, "Launcher.HomeFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;)V
    .locals 16
    .parameter "folderItem"

    .prologue
    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    .line 885
    .local v5, screen:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout;

    .line 886
    .local v13, currentPage:Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 888
    .local v1, activity:Landroid/app/Activity;
    const/4 v15, 0x0

    .line 889
    .local v15, rc:Z
    if-eqz v13, :cond_1

    .line 890
    const/4 v3, 0x2

    new-array v14, v3, [I

    .line 891
    .local v14, pos:[I
    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {v13, v14, v3, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 892
    new-instance v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v2}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 893
    .local v2, newFolder:Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeFragment;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v3}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 895
    const-wide/16 v3, -0x64

    const/4 v6, 0x0

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v14, v7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 897
    if-eqz p1, :cond_0

    .line 898
    iget-wide v8, v2, Lcom/android/launcher2/BaseItem;->mId:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v1

    move-object/from16 v7, p1

    invoke-static/range {v6 .. v12}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 899
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 901
    :cond_0
    invoke-virtual {v13, v2}, Lcom/android/launcher2/CellLayout;->createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    .line 902
    .local v4, v:Landroid/view/View;
    const/4 v3, 0x0

    aget v6, v14, v3

    const/4 v3, 0x1

    aget v7, v14, v3

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, v13

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher2/CellLayout;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 905
    .end local v2           #newFolder:Lcom/android/launcher2/HomeFolderItem;
    .end local v4           #v:Landroid/view/View;
    .end local v14           #pos:[I
    :cond_1
    if-nez v15, :cond_2

    .line 906
    const v3, 0x7f0e0023

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 909
    :cond_2
    return-void
.end method

.method createFolder(Lcom/android/launcher2/HomeItem;)Landroid/view/View;
    .locals 5
    .parameter "item"

    .prologue
    .line 789
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 790
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 792
    .local v0, currentPage:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .line 794
    .local v1, folder:Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 795
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 798
    return-object v1
.end method

.method createHotseat(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;
    .locals 3
    .parameter "info"

    .prologue
    .line 825
    const v1, 0x7f030019

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher2/HomeFragment;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method createHotseatFolder(Lcom/android/launcher2/HomeFolderItem;)Landroid/view/View;
    .locals 5
    .parameter "item"

    .prologue
    .line 801
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 802
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 804
    .local v0, currentPage:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .line 806
    .local v1, folder:Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 807
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 810
    return-object v1
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;
    .locals 3
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 839
    .local v0, favorite:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0, p3}, Lcom/android/launcher2/AppIconView;->applyFromShortcutInfo(Lcom/android/launcher2/HomeShortcutItem;)V

    .line 840
    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget v1, p3, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-lez v1, :cond_0

    .line 842
    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 843
    :cond_0
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;
    .locals 3
    .parameter "info"

    .prologue
    .line 820
    const v1, 0x7f030012

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher2/HomeFragment;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public deletePage(I)V
    .locals 16
    .parameter "page"

    .prologue
    .line 3074
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    .line 3075
    .local v7, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 3076
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 3077
    invoke-virtual {v7, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3079
    .local v10, view:Landroid/view/View;
    instance-of v13, v10, Lcom/android/launcher2/Folder;

    if-eqz v13, :cond_0

    .line 3076
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3087
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    .line 3089
    .local v5, item:Lcom/android/launcher2/HomeItem;
    instance-of v13, v5, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v13, :cond_1

    move-object v11, v5

    .line 3090
    check-cast v11, Lcom/android/launcher2/HomeWidgetItem;

    .line 3091
    .local v11, widgetItem:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 3092
    .local v1, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v1, :cond_1

    .line 3093
    iget v13, v11, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v13}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 3096
    .end local v1           #appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v11           #widgetItem:Lcom/android/launcher2/HomeWidgetItem;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_1

    .line 3100
    .end local v5           #item:Lcom/android/launcher2/HomeItem;
    .end local v10           #view:Landroid/view/View;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3101
    .local v8, toSave:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    .line 3103
    .local v3, count:I
    sget-boolean v13, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v13, :cond_3

    .line 3104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v13}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v13

    sub-int/2addr v3, v13

    .line 3105
    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    .line 3106
    move/from16 v0, p1

    if-gt v4, v0, :cond_4

    .line 3105
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3110
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    .line 3111
    .local v6, l:Lcom/android/launcher2/CellLayoutChildren;
    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v6, v13, v8}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    goto :goto_3

    .line 3113
    .end local v6           #l:Lcom/android/launcher2/CellLayoutChildren;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 3115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3116
    .local v9, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13, v9}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    .line 3117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v13

    move/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    .line 3119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v12

    .line 3120
    .local v12, workScreenCount:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    if-gt v12, v13, :cond_6

    .line 3121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v13, v14}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 3124
    :cond_6
    sget-boolean v13, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v13, :cond_7

    .line 3125
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v15}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    .line 3129
    :goto_4
    return-void

    .line 3127
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_4
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 2895
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2896
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/launcher2/HomeFragment;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2901
    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 2879
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    const-string v0, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 2890
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    return-void
.end method

.method public finishBindingItems()V
    .locals 3

    .prologue
    .line 2374
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 2375
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2376
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2378
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    .line 2381
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    .line 2385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2386
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeFragment;->completeAdd(Lcom/android/launcher2/HomeFragment$PendingAddArguments;)Z

    .line 2385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2388
    :cond_2
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2390
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2391
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 2393
    :cond_3
    return-void
.end method

.method getAllAppsIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 2
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 1819
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1820
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1826
    :goto_0
    return-object v0

    .line 1823
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1826
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    .prologue
    .line 3247
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getCurrentPageIndexbyContextualPage()I
    .locals 1

    .prologue
    .line 2791
    iget v0, p0, Lcom/android/launcher2/HomeFragment;->mPrevPageIndex:I

    return v0
.end method

.method public getDarkenView()Landroid/view/View;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070043

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteDropLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getDeleteDropTarget()Lcom/android/launcher2/DeleteDropTarget;
    .locals 1

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher2/DragLayer;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method getEditBar()Lcom/android/launcher2/HomeEditBar;
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    return-object v0
.end method

.method getHomeDarkenLayer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    return-object v0
.end method

.method getHomeEditTitleBar()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method public getLauncherModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 3255
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPage(I)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Lcom/android/launcher2/CellLayout;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    .prologue
    .line 2984
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v1

    .line 2985
    .local v1, w:I
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2986
    .local v0, s:I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 2980
    return-void
.end method

.method public getPagesTop()I
    .locals 2

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;
    .locals 1

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    return-object v0
.end method

.method getTopBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method public getWorkspaceLoading()Z
    .locals 1

    .prologue
    .line 3170
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    return v0
.end method

.method hideHotseat(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/4 v1, 0x0

    .line 1884
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1885
    if-eqz p1, :cond_1

    .line 1886
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1891
    :cond_0
    :goto_0
    return-void

    .line 1888
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method public isDeleteWorkScreenPopup()Z
    .locals 1

    .prologue
    .line 2825
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .parameter "layout"

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncludeItem(I)Z
    .locals 3
    .parameter "page"

    .prologue
    const/4 v2, 0x0

    .line 3037
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 3038
    .local v0, layout:Lcom/android/launcher2/CellLayoutChildren;
    if-nez v0, :cond_0

    .line 3039
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1239
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 1938
    return-void
.end method

.method public movePage(II)V
    .locals 8
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 2947
    if-ne p1, p2, :cond_0

    .line 2975
    :goto_0
    return-void

    .line 2949
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {p1, p2, v7}, Lcom/android/launcher2/WorkspacePages;->movePage(IILandroid/content/Context;)Z

    .line 2950
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 2952
    .local v1, homeIndex:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2953
    .local v6, toSave:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 2955
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 2956
    if-ne v2, p1, :cond_2

    move v5, p2

    .line 2961
    .local v5, newi:I
    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 2963
    .local v3, l:Lcom/android/launcher2/CellLayoutChildren;
    iget-object v7, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 2964
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayout;->addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;)V

    .line 2965
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/launcher2/WorkspacePages;->pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v4, v7}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 2966
    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 2968
    if-ltz v1, :cond_1

    if-ne v2, v1, :cond_1

    .line 2969
    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeFragment;->setHomeScreenAt(I)V

    .line 2970
    const/4 v1, -0x1

    .line 2955
    .end local v3           #l:Lcom/android/launcher2/CellLayoutChildren;
    .end local v4           #layout:Lcom/android/launcher2/CellLayout;
    .end local v5           #newi:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2957
    :cond_2
    if-le v2, p1, :cond_3

    if-gt v2, p2, :cond_3

    add-int/lit8 v5, v2, -0x1

    .restart local v5       #newi:I
    goto :goto_2

    .line 2958
    .end local v5           #newi:I
    :cond_3
    if-ge v2, p1, :cond_1

    if-lt v2, p2, :cond_1

    add-int/lit8 v5, v2, 0x1

    .restart local v5       #newi:I
    goto :goto_2

    .line 2965
    .restart local v3       #l:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v4       #layout:Lcom/android/launcher2/CellLayout;
    :cond_4
    const/16 v7, 0x8

    goto :goto_3

    .line 2974
    .end local v3           #l:Lcom/android/launcher2/CellLayoutChildren;
    .end local v4           #layout:Lcom/android/launcher2/CellLayout;
    .end local v5           #newi:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 316
    const-string v1, "Launcher.HomeFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated. savedInstanceState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 319
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->relayoutOnRotation()V

    .line 320
    return-void

    .line 316
    :cond_0
    const-string v0, "not null"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 419
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    .line 427
    if-ne p2, v6, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 428
    new-instance v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher2/HomeFragment$PendingAddArguments;-><init>(Lcom/android/launcher2/HomeFragment$1;)V

    .line 429
    .local v1, args:Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    iput p1, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->requestCode:I

    .line 430
    iput-object p3, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 431
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v2, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->container:J

    .line 432
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v2, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->screen:I

    .line 433
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v2, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellX:I

    .line 434
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v2, v1, Lcom/android/launcher2/HomeFragment$PendingAddArguments;->cellY:I

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    sget-object v2, Lcom/android/launcher2/HomeFragment;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v1           #args:Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    :cond_0
    :goto_0
    return-void

    .line 440
    .restart local v1       #args:Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeFragment;->completeAdd(Lcom/android/launcher2/HomeFragment$PendingAddArguments;)Z

    goto :goto_0

    .line 442
    .end local v1           #args:Lcom/android/launcher2/HomeFragment$PendingAddArguments;
    :cond_2
    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    :cond_3
    if-nez p2, :cond_0

    .line 444
    if-eqz p3, :cond_0

    .line 446
    const-string v2, "appWidgetId"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 447
    .local v0, appWidgetId:I
    if-eq v0, v6, :cond_0

    .line 448
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 2868
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 2858
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2860
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2861
    .local v0, rootView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2862
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 2864
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 2872
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 2850
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 2851
    .local v0, v:Landroid/view/View;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2852
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2853
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 2855
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 562
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 564
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 565
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 566
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 568
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    invoke-virtual {v0, v4}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 588
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspaceClingState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->setDismissCling_Key(Z)V

    .line 590
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->dismissOrNextWorkspaceCling(Landroid/view/View;)V

    .line 592
    :cond_1
    return v4

    .line 571
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto :goto_0

    .line 574
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 580
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_0

    .line 581
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 582
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 584
    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeFragment;->showWorkspace(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1536
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_1

    .line 1537
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1543
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1547
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1551
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1552
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v5, :cond_4

    .line 1553
    move-object v2, p1

    .line 1554
    .local v2, parent:Landroid/view/View;
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-nez v5, :cond_2

    .line 1555
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #parent:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 1557
    .restart local v2       #parent:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1558
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_3

    .line 1559
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1560
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_3

    .line 1561
    new-instance v5, Lcom/android/launcher2/HomeFragment$8;

    invoke-direct {v5, p0}, Lcom/android/launcher2/HomeFragment$8;-><init>(Lcom/android/launcher2/HomeFragment;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0           #handler:Landroid/os/Handler;
    :cond_3
    move-object v5, v4

    .line 1578
    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v1, v5, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 1579
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 1580
    .local v3, pos:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1581
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v3, v8

    aget v7, v3, v10

    aget v8, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v3, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1583
    invoke-virtual {p0, v1, v4}, Lcom/android/launcher2/HomeFragment;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1584
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #parent:Landroid/view/View;
    .end local v3           #pos:[I
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;

    if-ne p1, v5, :cond_5

    .line 1585
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0

    .line 1586
    :cond_5
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mEditIcon:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 1587
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->onClickEditButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->showAllApps()V

    .line 1607
    return-void
.end method

.method public onClickEditButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 1611
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    .line 1612
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 1613
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeFragment;->showWorkspaceEditmode(Z)V

    .line 1615
    :cond_0
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2909
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 2910
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    .line 2911
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 267
    const-string v2, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate. savedInstanceState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 271
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 272
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 273
    new-instance v1, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    .line 276
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->registerContentObservers()V

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->lockAllApps()V

    .line 283
    return-void

    .line 267
    .end local v0           #app:Lcom/android/launcher2/LauncherApplication;
    :cond_0
    const-string v1, "not null"

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 288
    const-string v2, "Launcher.HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView. savedInstanceState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 292
    new-instance v1, Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 293
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 300
    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 301
    .local v0, root:Landroid/view/View;
    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    .line 302
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->setupViews()V

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateGlobalSearchIcon()Z

    .line 306
    iput-object p3, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    .line 307
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeFragment;->restoreState(Landroid/os/Bundle;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 311
    return-object v0

    .line 288
    .end local v0           #root:Landroid/view/View;
    :cond_0
    const-string v1, "not null"

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1201
    const-string v1, "Launcher.HomeFragment"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1205
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1206
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1209
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :goto_0
    iput-object v3, p0, Lcom/android/launcher2/HomeFragment;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 1215
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1217
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 1220
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->unbindWorkspaceAndHotseatItems()V

    .line 1222
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1224
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1225
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 1226
    iput-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1227
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1229
    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    .line 1230
    return-void

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "Launcher.HomeFragment"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 356
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 364
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 365
    return-void
.end method

.method public onHomePressed()Z
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/HomeFragment$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeFragment$1;-><init>(Lcom/android/launcher2/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 653
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->performOnHomePressed()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .parameter "v"

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    iget-boolean v10, v10, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v10, :cond_0

    .line 1678
    const/4 v10, 0x0

    .line 1777
    :goto_0
    return v10

    .line 1681
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->isWorkspaceLocked()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1682
    const/4 v10, 0x0

    goto :goto_0

    .line 1685
    :cond_1
    instance-of v10, p1, Lcom/android/launcher2/CellLayout;

    if-nez v10, :cond_2

    .line 1686
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1690
    .restart local p1
    :cond_2
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v10, :cond_3

    instance-of v10, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_3

    move-object v1, p1

    .line 1692
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1693
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_3

    .line 1695
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v6

    .line 1696
    .local v6, parent:Lcom/android/launcher2/CellLayoutContainer;
    instance-of v10, v6, Lcom/android/launcher2/Hotseat;

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1698
    const-string v10, "Launcher.HomeFragment"

    const-string v11, "Hotseat item long click but we do nothing in normal mode"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v10, 0x1

    goto :goto_0

    .line 1705
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v6           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1706
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 1708
    .local v3, longClickCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v3, :cond_4

    .line 1709
    const/4 v10, 0x1

    goto :goto_0

    .line 1714
    :cond_4
    iget-object v2, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1715
    .local v2, itemUnderLongClick:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->isHotseatLayout(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_5
    const/4 v0, 0x1

    .line 1717
    .local v0, allowLongPress:Z
    :goto_1
    sget-boolean v10, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v10, :cond_7

    .line 1718
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->isHotseatLayout(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v10, p1}, Lcom/android/launcher2/ContextualPageManager;->isContextualPageHotseat(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_c

    :cond_6
    const/4 v0, 0x1

    .line 1720
    :cond_7
    :goto_2
    if-eqz v0, :cond_a

    .line 1723
    if-nez v2, :cond_d

    iget-boolean v10, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    if-nez v10, :cond_d

    .line 1725
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 1728
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1730
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 1733
    :cond_9
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1734
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->snapToDestination()V

    .line 1777
    :cond_a
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1715
    .end local v0           #allowLongPress:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 1718
    .restart local v0       #allowLongPress:Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    .line 1738
    :cond_d
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v10, :cond_f

    .line 1739
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v10

    if-nez v10, :cond_f

    .line 1740
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 1743
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1744
    const v8, 0x7f0e00a9

    .line 1748
    .local v8, textId:I
    :goto_4
    new-instance v4, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1749
    .local v4, myToast:Landroid/widget/Toast;
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03000f

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1750
    .local v5, myToastView:Landroid/view/View;
    const v10, 0x7f07002c

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1751
    .local v9, tv:Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1752
    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1754
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c009c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1755
    .local v7, posY:I
    instance-of v10, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_e

    move-object v1, p1

    .line 1756
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1758
    .restart local v1       #cl:Lcom/android/launcher2/CellLayout;
    iget v10, v3, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    if-lt v10, v11, :cond_e

    .line 1759
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c009b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1764
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    :cond_e
    const/16 v10, 0x30

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 1765
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1769
    .end local v4           #myToast:Landroid/widget/Toast;
    .end local v5           #myToastView:Landroid/view/View;
    .end local v7           #posY:I
    .end local v8           #textId:I
    .end local v9           #tv:Landroid/widget/TextView;
    :cond_f
    iget-object v10, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, v2}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)V

    .line 1771
    iget v10, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iput v10, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemX:I

    .line 1772
    iget v10, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iput v10, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemY:I

    .line 1773
    iget v10, v3, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    iput v10, p0, Lcom/android/launcher2/HomeFragment;->mDraggedItemScreen:I

    goto/16 :goto_3

    .line 1746
    :cond_10
    const v8, 0x7f0e00a7

    .restart local v8       #textId:I
    goto :goto_4
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 1
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 2601
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    .line 2602
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeFragment;->changeTop4Icon(Landroid/view/View;I)V

    .line 2604
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_1

    .line 2605
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2607
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 490
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 492
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 493
    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 0

    .prologue
    .line 3001
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 0

    .prologue
    .line 3005
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 0

    .prologue
    .line 3015
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 0

    .prologue
    .line 3010
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 464
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    .line 466
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mRestoring:Z

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateWallpaperOffsets()V

    .line 471
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 474
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 477
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    .line 478
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    const/4 v5, 0x1

    .line 324
    const-string v1, "launcher.current_screen"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 330
    .local v0, folderBundle:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->saveOpenFolderState(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string v1, "launcher.workspace_folder_bundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v1, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    if-eqz v1, :cond_1

    .line 337
    const-string v1, "launcher.add_container"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 338
    const-string v1, "launcher.add_screen"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string v1, "launcher.add_cell_x"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    const-string v1, "launcher.add_cell_y"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    const-string v1, "launcher.workspace_was_in_quickview"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 345
    const-string v1, "launcher.workspace_quickview_delete_index"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getDeletePageIndex()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 348
    const-string v1, "launcher.workspace_folder_darken_layer_visibility"

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    :cond_3
    iput-boolean v5, p0, Lcom/android/launcher2/HomeFragment;->mAfterSavedInstanceState:Z

    .line 352
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 456
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 458
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 482
    const-string v0, "Launcher.HomeFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 484
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 485
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStop()V

    .line 486
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1595
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->showWorkspace(Z)V

    .line 1596
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 1073
    return-void
.end method

.method openQuickViewWorkspace(Landroid/os/Bundle;Z)V
    .locals 10
    .parameter "savedState"
    .parameter "drawOpenAnimation"

    .prologue
    const-wide/16 v8, 0x190

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2427
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2503
    :cond_0
    :goto_0
    return-void

    .line 2431
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 2440
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isTransitioningToShowAllApps()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2443
    if-eqz p2, :cond_2

    .line 2444
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->drawOpenAnimation()V

    .line 2446
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 2447
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    new-instance v2, Lcom/android/launcher2/HomeFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/HomeFragment$9;-><init>(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/AnimationLayer;)V

    .line 2471
    .local v2, listener:Landroid/animation/AnimatorListenerAdapter;
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_3

    .line 2472
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2473
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2477
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2478
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2479
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2483
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2484
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2487
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;

    iget-object v4, p0, Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher2/DeleteDropTarget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2489
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    .line 2490
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    .line 2492
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2495
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 2496
    if-eqz p1, :cond_6

    .line 2497
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const-string v4, "launcher.workspace_quickview_delete_index"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/QuickViewWorkspace;->setDeletePageIndex(I)V

    .line 2499
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 2500
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->open()V

    .line 2502
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto/16 :goto_0
.end method

.method processItemDropToNewFolder(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "componentName"

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1330
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v2, -0x64

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 1331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v0, createItemIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1333
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeFragment;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1334
    return-void
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1371
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1373
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1374
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1375
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1378
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1379
    const-string v4, "android.intent.extra.TITLE"

    const v5, 0x7f0e0029

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1380
    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/HomeFragment;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1384
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1382
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher2/HomeFragment;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V
    .locals 3
    .parameter "componentName"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->resetAddInfo()V

    .line 1314
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide p2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 1315
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput p4, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1316
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-object p6, v1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1318
    if-eqz p5, :cond_0

    .line 1319
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1320
    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1323
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v0, createShortcutIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1325
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->processShortcut(Landroid/content/Intent;)V

    .line 1326
    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 1161
    iget-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1163
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/HomeFolderItem;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1485
    sget-object v0, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    return-void
.end method

.method removePage()V
    .locals 1

    .prologue
    .line 2808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    .line 2809
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V

    .line 2810
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .parameter "hostView"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 1158
    :cond_0
    return-void
.end method

.method public restoreOpenFolder(Landroid/os/Bundle;)Z
    .locals 12
    .parameter "bundle"

    .prologue
    const/4 v8, 0x0

    .line 2212
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v9, :cond_1

    .line 2236
    :cond_0
    :goto_0
    return v8

    .line 2215
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2216
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 2219
    const-string v9, "launcher.workspace_open_folder_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2220
    .local v3, openFolderId:J
    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v3, v4}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v2

    .line 2221
    .local v2, openFolder:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v2, :cond_0

    .line 2224
    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/Workspace;->restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2225
    iget-object v9, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 2226
    .local v1, folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_0

    .line 2227
    const-string v8, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2228
    .local v0, editText:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2229
    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2230
    .local v6, selStart:I
    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2231
    .local v5, selEnd:I
    invoke-virtual {v1, v0, v6, v5}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    .line 2233
    .end local v5           #selEnd:I
    .end local v6           #selStart:I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    .prologue
    .line 2996
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->saveScreenInfo()V

    .line 2997
    return-void
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 2192
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    .line 2208
    :cond_0
    :goto_0
    return v2

    .line 2195
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2196
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 2199
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2200
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v1

    .line 2201
    .local v1, text:Landroid/widget/EditText;
    const-string v2, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2204
    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2207
    .end local v1           #text:Landroid/widget/EditText;
    :cond_2
    const-string v2, "launcher.workspace_open_folder_id"

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2208
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveScreenInfo()V
    .locals 3

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2800
    :goto_0
    return-void

    .line 2796
    :cond_0
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_1

    .line 2797
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v2}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_0

    .line 2799
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setContextualPageManager(Lcom/android/launcher2/ContextualPageManager;)V
    .locals 0
    .parameter "cpManager"

    .prologue
    .line 3251
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    .line 3252
    return-void
.end method

.method public setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 3259
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    .line 3260
    return-void
.end method

.method public setDarkenViewAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 3133
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3134
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070043

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    .line 3136
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mDarkenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 3137
    return-void
.end method

.method public setHomeScreenAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2804
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 2805
    return-void
.end method

.method public setHotseat(Lcom/android/launcher2/Hotseat;)V
    .locals 1
    .parameter "hotSeat"

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 1795
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeFragment;)V

    .line 1796
    return-void
.end method

.method public setWorkspaceLoading()V
    .locals 1

    .prologue
    .line 3166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspaceLoading:Z

    .line 3167
    return-void
.end method

.method showAllApps()V
    .locals 1

    .prologue
    .line 1894
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 1895
    :cond_0
    return-void
.end method

.method public showDeleteWorkScreen()V
    .locals 1

    .prologue
    .line 2819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mIsDeletePopup:Z

    .line 2820
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 2821
    return-void
.end method

.method public showFirstRunWorkspaceCling()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2418
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 2419
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    const-string v1, "cling.workspace.dismissed"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2420
    const v2, 0x7f070035

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 2422
    :cond_0
    return-void
.end method

.method showHotseat(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/high16 v1, 0x3f80

    .line 1871
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1872
    if-eqz p1, :cond_1

    .line 1873
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1878
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method showOutOfSpaceMessage()V
    .locals 3

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0023

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1167
    return-void
.end method

.method showWorkspace(Z)V
    .locals 5
    .parameter "animated"

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1845
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1847
    .local v1, stagger:I
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 1850
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 1853
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1855
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->closeQuickViewWorkspace(Z)V

    .line 1856
    return-void
.end method

.method showWorkspaceEditmode(Z)V
    .locals 5
    .parameter "animated"

    .prologue
    .line 1860
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1861
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1863
    .local v1, stagger:I
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 1864
    iget-object v2, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 1865
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1234
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mWaitingForResult:Z

    .line 1235
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1236
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v3, 0x7f0e0003

    const/4 v2, 0x0

    .line 1664
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1673
    :goto_0
    return-void

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1667
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1668
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1669
    const-string v1, "Launcher.HomeFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .parameter "intent"
    .parameter "tag"

    .prologue
    const v3, 0x7f0e0003

    const/4 v1, 0x0

    .line 1645
    const/high16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1647
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1648
    const/4 v1, 0x1

    .line 1659
    :goto_0
    return v1

    .line 1649
    :catch_0
    move-exception v0

    .line 1650
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1651
    const-string v2, "Launcher.HomeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1652
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1653
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1654
    const-string v2, "Launcher.HomeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "componentName"

    .prologue
    .line 1618
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1619
    .local v1, packageName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1621
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1622
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 1623
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/AppItem;)V
    .locals 6
    .parameter "app"

    .prologue
    .line 1626
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1627
    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v4, :cond_1

    .line 1630
    const v2, 0x7f0e006d

    .line 1631
    .local v2, messageId:I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1642
    .end local v2           #messageId:I
    :cond_0
    :goto_0
    return-void

    .line 1633
    :cond_1
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1634
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1635
    .local v0, className:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1637
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1639
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2032
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2034
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    if-nez v5, :cond_1

    .line 2065
    :cond_0
    :goto_0
    return-void

    .line 2039
    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->abortConfigChanges()V

    .line 2041
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->isFavoritesInNormalMode()Z

    move-result v1

    .line 2042
    .local v1, currentFavoritesModeIsNormal:Z
    iget-boolean v6, p0, Lcom/android/launcher2/HomeFragment;->mFavoritesModeIsNormal:Z

    if-eq v1, v6, :cond_5

    .line 2043
    iput-boolean v1, p0, Lcom/android/launcher2/HomeFragment;->mFavoritesModeIsNormal:Z

    .line 2044
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 2045
    .local v2, folder:Lcom/android/launcher2/Folder;
    if-eqz v2, :cond_3

    .line 2046
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2047
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 2048
    :cond_2
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2050
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeFragment;->closeQuickViewWorkspace(Z)V

    .line 2051
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 2052
    iput-boolean v7, v5, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 2053
    invoke-direct {p0}, Lcom/android/launcher2/HomeFragment;->createWorkspaceChildren()V

    .line 2062
    .end local v2           #folder:Lcom/android/launcher2/Folder;
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v6, :cond_0

    .line 2063
    iget-object v6, p0, Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    goto :goto_0

    .line 2055
    :cond_5
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 2056
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 2058
    invoke-virtual {v5, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 2059
    .local v4, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 2056
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method startWallpaper(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 1489
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeFragment;->showWorkspace(Z)V

    .line 1490
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v1, pickWallpaper:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "sec.android.launcher2.intent.action.CHOOSER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1493
    .local v0, chooser:Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1494
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1496
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1497
    return-void
.end method

.method unlockAllApps()V
    .locals 0

    .prologue
    .line 1942
    return-void
.end method

.method public updateGlobalSearchIcon()Z
    .locals 4

    .prologue
    .line 2914
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 2916
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2917
    .local v0, activityName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getTopBar()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2918
    const v2, 0x7f07003a

    const v3, 0x7f020069

    invoke-direct {p0, v2, v0, v3}, Lcom/android/launcher2/HomeFragment;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2923
    const/4 v2, 0x1

    .line 2926
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateItems_CP(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3243
    .local p1, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment;->mHomeItems:Ljava/util/List;

    .line 3244
    return-void
.end method

.method protected updateRunning()V
    .locals 11

    .prologue
    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1083
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 1084
    .local v0, autoAdvanceRunning:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 1085
    iput-boolean v0, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceRunning:Z

    .line 1086
    if-eqz v0, :cond_3

    .line 1087
    iget-wide v3, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1088
    .local v1, delay:J
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/HomeFragment;->sendAdvanceMessage(J)V

    .line 1098
    .end local v1           #delay:J
    :cond_0
    :goto_2
    return-void

    .end local v0           #autoAdvanceRunning:Z
    :cond_1
    move v0, v4

    .line 1083
    goto :goto_0

    .line 1087
    .restart local v0       #autoAdvanceRunning:Z
    :cond_2
    iget-wide v1, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 1090
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1091
    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long v7, v1, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/HomeFragment;->mAutoAdvanceTimeLeft:J

    .line 1094
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1095
    iget-object v3, p0, Lcom/android/launcher2/HomeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method public updateWallpaperOffsets()V
    .locals 1

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 3142
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/high16 v2, 0x10

    .line 1835
    if-eqz p1, :cond_1

    move v1, v2

    .line 1836
    .local v1, wpflags:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 1838
    .local v0, curflags:I
    if-eq v1, v0, :cond_0

    .line 1839
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1841
    :cond_0
    return-void

    .line 1835
    .end local v0           #curflags:I
    .end local v1           #wpflags:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wallpaperHack()V
    .locals 2

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3033
    return-void
.end method
