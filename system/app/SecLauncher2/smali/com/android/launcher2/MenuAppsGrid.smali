.class public final Lcom/android/launcher2/MenuAppsGrid;
.super Lcom/android/launcher2/SmoothPagedView;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/MenuFragment$AppModelNotifications;
.implements Lcom/android/launcher2/MenuFragment$AppBadgeUpdated;
.implements Lcom/android/launcher2/Folder$FolderNameChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGrid$8;,
        Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;,
        Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;,
        Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;,
        Lcom/android/launcher2/MenuAppsGrid$StateUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;,
        Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;,
        Lcom/android/launcher2/MenuAppsGrid$StateEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateNormal;,
        Lcom/android/launcher2/MenuAppsGrid$StateObj;,
        Lcom/android/launcher2/MenuAppsGrid$State;,
        Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;
    }
.end annotation


# static fields
.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "openFolderId"

.field private static final PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder; = null

.field private static final PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder; = null

.field private static final PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder; = null

.field private static final PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "pendingFolderEditText"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "pending_folder_edit_text_selection_start"

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuAppsGrid"

.field private static final TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final TRANSITION_MAX_ROTATION:F = 16.0f

.field private static final TRANSITION_PIVOT:F = 0.5f

.field static final sPanelDrawer:Lcom/android/launcher2/PanelDrawer;


# instance fields
.field private mCollectStateChangeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDownloadedTitleBar:Landroid/view/ViewGroup;

.field private mDownloadedTitleBarStub:Landroid/view/ViewStub;

.field private mDragInProgress:Z

.field private mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

.field private mEditTitleBar:Landroid/view/ViewGroup;

.field private mEnterEditModeAnimator:Landroid/animation/Animator;

.field private mExitEditModeAnimator:Landroid/animation/Animator;

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mFolderLocation:[I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

.field private mNormalTitleBar:Landroid/view/ViewGroup;

.field private mPendingAppModelUpdated:Z

.field private mPendingFolderBundle:Landroid/os/Bundle;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSelectedTitleBar:Landroid/view/ViewGroup;

.field private mSelectedTitleBarStub:Landroid/view/ViewStub;

.field private mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

.field private mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

.field private mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

.field private mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

.field private mTabHost:Lcom/android/launcher2/MenuTabHost;

.field private mUninstallTitleBar:Landroid/view/View;

.field private mViewType:Lcom/android/launcher2/MenuFragment$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 103
    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    .line 897
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v5, [F

    aput v6, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    .line 898
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v5, [F

    const v2, 0x3f666666

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    .line 899
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v5, [F

    aput v6, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    .line 900
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v5, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    .line 2344
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    .line 2345
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    .line 2346
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    .line 2347
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    .line 2348
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    .line 2349
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    return-void

    .line 2344
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 2345
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2346
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 2347
    :array_3
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2348
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2349
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    .line 116
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 267
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    .line 398
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$3;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    .line 970
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 972
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 974
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 976
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 978
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 980
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    .line 982
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    .line 984
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    .line 986
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 987
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    .line 2471
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    .line 127
    const-string v1, "Launcher.MenuAppsGrid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 128
    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 132
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 134
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->MenuAppsGrid:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setSaveEnabled(Z)V

    .line 141
    const v1, 0x7f05000a

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    .line 142
    const v1, 0x7f05000b

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->animateInTitleBar(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/MenuAppsGrid;Landroid/animation/Animator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->addStateChangeAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/launcher2/MenuAppsGrid;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->animateOutTitleBar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$3200()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/MenuAppsGrid;->animateSelectedToFolder(Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/launcher2/MenuAppsGrid;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuFragment$ViewType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->isConfirmDialogOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method private addAppItem(Lcom/android/launcher2/AppItem;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 593
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v0

    .line 595
    .local v0, page:Lcom/android/launcher2/CellLayoutMenu;
    const/4 v1, 0x0

    .line 596
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    .line 597
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030027

    invoke-virtual {v3, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 603
    .restart local v1       #icon:Lcom/android/launcher2/AppIconView;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 604
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->onAddItem(Lcom/android/launcher2/AppIconView;)V

    .line 606
    iget-wide v3, p1, Lcom/android/launcher2/BaseItem;->mId:J

    long-to-int v3, v3

    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v5, v5}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutMenu;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 608
    return-void

    .line 600
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002a

    invoke-virtual {v3, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .restart local v1       #icon:Lcom/android/launcher2/AppIconView;
    goto :goto_0
.end method

.method private addStateChangeAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mCollectStateChangeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2279
    return-void
.end method

.method private animateInTitleBar(Landroid/view/View;Z)V
    .locals 12
    .parameter "titleBar"
    .parameter "immediately"

    .prologue
    .line 2358
    if-eqz p2, :cond_2

    .line 2359
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2360
    :cond_0
    if-eqz p1, :cond_1

    .line 2361
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2362
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 2416
    :cond_1
    :goto_0
    return-void

    .line 2367
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 2368
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2373
    .local v0, a:Landroid/animation/Animator;
    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$5;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher2/MenuAppsGrid$5;-><init>(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2381
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2382
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->addStateChangeAnimator(Landroid/animation/Animator;)V

    .line 2387
    const-string v6, "Launcher.MenuAppsGrid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current page is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2389
    .local v2, page:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2390
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 2391
    .local v1, location:[I
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2392
    const/4 v6, 0x1

    aget v3, v1, v6

    .line 2393
    .local v3, pageY:I
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 2394
    const/4 v6, 0x1

    aget v5, v1, v6

    .line 2395
    .local v5, titleBarY:I
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    sub-int v7, v3, v5

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 2396
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 2398
    .end local v1           #location:[I
    .end local v3           #pageY:I
    .end local v5           #titleBarY:I
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2401
    .end local v0           #a:Landroid/animation/Animator;
    .end local v2           #page:Landroid/view/View;
    :cond_4
    if-eqz p1, :cond_1

    .line 2402
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2404
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v4, v6

    .line 2407
    .local v4, titleBarHeight:F
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    neg-float v11, v4

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v8, v6, v7

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/launcher2/MenuAppsGrid;->addStateChangeAnimator(Landroid/animation/Animator;)V

    .line 2414
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private animateOutTitleBar(Landroid/view/View;)V
    .locals 8
    .parameter "titleBar"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 2422
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2423
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2424
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v7}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2425
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v6

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->addStateChangeAnimator(Landroid/animation/Animator;)V

    .line 2433
    :cond_0
    if-eqz p1, :cond_1

    .line 2434
    invoke-virtual {p1, v4, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2435
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2439
    .local v0, a:Landroid/animation/Animator;
    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$6;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/MenuAppsGrid$6;-><init>(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2447
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2448
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->addStateChangeAnimator(Landroid/animation/Animator;)V

    .line 2450
    .end local v0           #a:Landroid/animation/Animator;
    :cond_1
    return-void
.end method

.method private animatePageZoomOut(Z)V
    .locals 3
    .parameter "immediately"

    .prologue
    .line 2458
    if-eqz p1, :cond_0

    .line 2459
    const v0, 0x3f666666

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    .line 2460
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPageBackgroundAlpha(F)V

    .line 2469
    :goto_0
    return-void

    .line 2462
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->addStateChangeAnimator(Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private animateSelectedToFolder(Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V
    .locals 11
    .parameter
    .parameter "folderItem"
    .parameter
    .parameter "pageIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher2/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    const/4 v5, 0x0

    .line 241
    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    .end local p2
    :goto_0
    return-void

    .line 244
    .restart local p2
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 245
    .local v10, page:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    check-cast p2, Lcom/android/launcher2/BaseItem;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, folderView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 249
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .local v8, child:Landroid/view/View;
    move-object v4, v8

    .line 250
    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 252
    .local v2, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v8, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 254
    .local v3, from:[I
    const/4 v4, 0x0

    const/16 v6, 0x208

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer;->animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    .line 255
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 257
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v3           #from:[I
    .end local v8           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 259
    new-instance v4, Lcom/android/launcher2/MenuAppsGrid$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuAppsGrid$2;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/launcher2/MenuAppsGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private createPage()Lcom/android/launcher2/CellLayoutMenu;
    .locals 5

    .prologue
    .line 639
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 641
    .local v0, cell:Lcom/android/launcher2/CellLayoutMenu;
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->addView(Landroid/view/View;)V

    .line 644
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v2}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 645
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 646
    return-object v0
.end method

.method private createPositionIconClone(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 20
    .parameter "icon"
    .parameter "folderItem"
    .parameter "item"

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 205
    .local v12, page:Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 206
    .local v4, bitmapWidth:I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 207
    .local v3, bitmapHeight:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 208
    .local v13, pageZoom:F
    new-instance v14, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v14, v:Landroid/widget/ImageView;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v2, p3

    .line 212
    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 213
    .local v2, appItem:Lcom/android/launcher2/AppItem;
    iget-object v11, v2, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    .line 214
    .local v11, location:[I
    const/16 v17, 0x0

    aget v15, v11, v17

    .line 215
    .local v15, x:I
    const/16 v17, 0x1

    aget v16, v11, v17

    .line 218
    .local v16, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 219
    .local v10, iconWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 220
    .local v9, iconHeight:I
    sub-int v17, v10, v4

    div-int/lit8 v5, v17, 0x2

    .line 221
    .local v5, centerX:I
    sub-int v17, v9, v3

    div-int/lit8 v6, v17, 0x2

    .line 222
    .local v6, centerY:I
    add-int/2addr v15, v5

    .line 223
    sub-int v16, v16, v6

    .line 226
    const/high16 v17, 0x3f80

    sub-float v17, v17, v13

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    int-to-float v0, v15

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v7, v17, v18

    .line 227
    .local v7, dx:F
    const/high16 v17, 0x3f80

    sub-float v17, v17, v13

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v8, v17, v18

    .line 228
    .local v8, dy:F
    int-to-float v0, v15

    move/from16 v17, v0

    add-float v17, v17, v7

    move/from16 v0, v17

    float-to-int v15, v0

    .line 229
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v8

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 232
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    move-result v17

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    mul-int v17, v17, v18

    add-int v15, v15, v17

    .line 234
    add-int v17, v15, v4

    add-int v18, v16, v3

    invoke-virtual/range {v14 .. v18}, Landroid/widget/ImageView;->layout(IIII)V

    .line 236
    return-object v14
.end method

.method private getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;
    .locals 5
    .parameter "item"

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    .line 612
    .local v2, pageCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 613
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 614
    .local v3, targetPage:I
    move v0, v2

    .local v0, i:I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutMenu;

    .line 621
    .end local v0           #i:I
    .end local v3           #targetPage:I
    :goto_1
    return-object v4

    .line 620
    :cond_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    .line 621
    .local v1, lastPage:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v1           #lastPage:Lcom/android/launcher2/CellLayoutMenu;
    :goto_2
    move-object v4, v1

    goto :goto_1

    .restart local v1       #lastPage:Lcom/android/launcher2/CellLayoutMenu;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    goto :goto_2
.end method

.method private isConfirmDialogOpen()Z
    .locals 2

    .prologue
    .line 2759
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2760
    .local v0, fragManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

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

.method private openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    .line 2707
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v6, :cond_1

    .line 2722
    :cond_0
    :goto_0
    return-void

    .line 2711
    :cond_1
    const-string v6, "openFolderId"

    const-wide/16 v7, -0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2712
    .local v2, openFolderId:J
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    .line 2713
    .local v1, item:Lcom/android/launcher2/AppItem;
    if-eqz v1, :cond_0

    instance-of v6, v1, Lcom/android/launcher2/FolderItem;

    if-eqz v6, :cond_0

    .line 2714
    const-string v6, "pendingFolderEditText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2715
    .local v0, editText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2716
    const-string v6, "pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2717
    .local v5, selStart:I
    const-string v6, "pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2719
    .local v4, selEnd:I
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v0, v5, v4}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setDragInProgress(Z)V
    .locals 1
    .parameter "dragInProgress"

    .prologue
    .line 2879
    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    .line 2880
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    if-eqz v0, :cond_0

    .line 2881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 2882
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 2884
    :cond_0
    return-void
.end method

.method private showBottomBar(ZZZ)V
    .locals 6
    .parameter "show_folder"
    .parameter "isSystemApp"
    .parameter "isFolder"

    .prologue
    const/4 v3, 0x2

    .line 2482
    const/4 v0, 0x0

    .line 2486
    .local v0, bb:Lcom/android/launcher2/MenuEditBottomBar;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 2487
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2488
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bb:Lcom/android/launcher2/MenuEditBottomBar;
    check-cast v0, Lcom/android/launcher2/MenuEditBottomBar;

    .line 2492
    .restart local v0       #bb:Lcom/android/launcher2/MenuEditBottomBar;
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2493
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2494
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bb:Lcom/android/launcher2/MenuEditBottomBar;
    check-cast v0, Lcom/android/launcher2/MenuEditBottomBar;

    .line 2498
    .restart local v0       #bb:Lcom/android/launcher2/MenuEditBottomBar;
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    .line 2499
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 2500
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bb:Lcom/android/launcher2/MenuEditBottomBar;
    check-cast v0, Lcom/android/launcher2/MenuEditBottomBar;

    .line 2505
    .restart local v0       #bb:Lcom/android/launcher2/MenuEditBottomBar;
    :cond_2
    if-nez v0, :cond_3

    .line 2506
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bb:Lcom/android/launcher2/MenuEditBottomBar;
    check-cast v0, Lcom/android/launcher2/MenuEditBottomBar;

    .line 2509
    .restart local v0       #bb:Lcom/android/launcher2/MenuEditBottomBar;
    :cond_3
    if-eqz v0, :cond_4

    .line 2510
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v3

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBottomBar;->show(ZZZZLcom/android/launcher2/PagedView;)V

    .line 2514
    :goto_0
    return-void

    .line 2512
    :cond_4
    const-string v1, "Launcher.MenuAppsGrid"

    const-string v2, "Unable to find a bottom bar to show."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePageLayout(I)V
    .locals 3
    .parameter "oldCountX"

    .prologue
    .line 2904
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    .line 2905
    .local v1, pageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2906
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/CellLayoutMenu;->updateViewToCellLayout(I)V

    .line 2905
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2909
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->updateQuickViewMainMenu()V

    .line 2910
    return-void
.end method


# virtual methods
.method protected allowCustomOrdering()Z
    .locals 2

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    sget-object v1, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animateNormalTitleBarVisibility(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    const/4 v5, 0x0

    .line 158
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 162
    if-eqz p1, :cond_2

    .line 163
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 165
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 166
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

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

    .line 174
    .local v0, a:Landroid/view/ViewPropertyAnimator;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    iget-object v1, v2, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 175
    .local v1, l:Landroid/animation/AnimatorListenerAdapter;
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$1;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/MenuAppsGrid$1;-><init>(Lcom/android/launcher2/MenuAppsGrid;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 189
    .end local v0           #a:Landroid/view/ViewPropertyAnimator;
    .end local v1           #l:Landroid/animation/AnimatorListenerAdapter;
    :cond_1
    return-void

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

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

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2618
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    .line 2619
    return-void
.end method

.method public appModelLoaded()V
    .locals 0

    .prologue
    .line 2523
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 2524
    return-void
.end method

.method public appModelUpdated()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2528
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2529
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    .line 2533
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-eqz v3, :cond_1

    .line 2534
    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 2589
    :cond_0
    :goto_0
    return-void

    .line 2537
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    .line 2538
    .local v2, state:Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_7

    :cond_2
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2541
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2543
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2544
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2545
    const-string v3, "WIDGET"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2547
    const-string v3, "WIDGET"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2548
    const-string v3, "GRID_WIDGET"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2553
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 2578
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :goto_1
    invoke-virtual {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onAppModelUpdated()V

    .line 2582
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_3

    .line 2583
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 2584
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItems(Ljava/lang/Iterable;)V

    .line 2587
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->setDownloadIconEnabled()V

    goto :goto_0

    .line 2555
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    :cond_4
    const-string v3, "LIST"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2557
    const-string v3, "LIST"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2558
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2560
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 2561
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    goto :goto_1

    .line 2562
    :cond_5
    const-string v3, "WIDGET_LIST"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2564
    const-string v3, "WIDGET_LIST"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2565
    const-string v3, "LIST_WIDGET"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2567
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2568
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 2569
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    goto/16 :goto_1

    .line 2572
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_1

    .line 2576
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    goto/16 :goto_1
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 10
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 447
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v7, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v6

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 458
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v4

    if-nez v4, :cond_0

    .line 460
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v4

    if-nez v4, :cond_2

    .line 467
    :cond_2
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_4

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Launcher;->exitAllApps(Z)V

    .line 477
    :goto_1
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    const-wide/16 v7, 0x23

    invoke-virtual {v4, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 479
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v7, :cond_6

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 481
    .local v1, i:Lcom/android/launcher2/AppItem;
    iget-object v4, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v7, :cond_5

    move v4, v5

    :goto_2
    iget-boolean v7, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    iget-object v8, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v8, v9, :cond_3

    move v6, v5

    :cond_3
    invoke-direct {p0, v4, v7, v6}, Lcom/android/launcher2/MenuAppsGrid;->showBottomBar(ZZZ)V

    .end local v1           #i:Lcom/android/launcher2/AppItem;
    :goto_3
    move v6, v5

    .line 513
    goto :goto_0

    .line 475
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->enableRollNavigation()V

    goto :goto_1

    .restart local v1       #i:Lcom/android/launcher2/AppItem;
    :cond_5
    move v4, v6

    .line 481
    goto :goto_2

    .line 485
    .end local v1           #i:Lcom/android/launcher2/AppItem;
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    const-string v7, "com.android.launcher2.prefs"

    invoke-virtual {v4, v7, v6}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 488
    .local v3, prefs:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v4, v7}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 489
    const-string v4, "WIDGET"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 490
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "WIDGET"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    goto :goto_3

    .line 494
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_7
    const-string v4, "LIST"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 495
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 496
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "LIST"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 499
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    goto :goto_3

    .line 500
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_8
    const-string v4, "WIDGET_LIST"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 501
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 502
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "WIDGET_LIST"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 503
    const-string v4, "LIST_WIDGET"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 504
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 505
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuFragment$ViewType;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/MenuFragment;->setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    goto/16 :goto_3

    .line 509
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_9
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_3

    .line 515
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    goto/16 :goto_0
.end method

.method public closeFolder(Z)Z
    .locals 3
    .parameter "commitEdit"

    .prologue
    const/4 v0, 0x1

    .line 408
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItems(Ljava/lang/Iterable;)V

    .line 410
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    .line 414
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Folder;->close(Z)V

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 2851
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 2852
    .local v0, action:I
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    .line 2863
    .local v1, result:Z
    if-ne v0, v2, :cond_1

    .line 2864
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    .line 2869
    :cond_0
    :goto_0
    return v1

    .line 2865
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2866
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2874
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2875
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->onDrawComplete(Landroid/graphics/Canvas;)V

    .line 2876
    return-void
.end method

.method protected endDragging()V
    .locals 0

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 522
    return-void
.end method

.method protected findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .parameter "tag"

    .prologue
    .line 2651
    const/4 v4, 0x0

    .local v4, pageIndex:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2652
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    .line 2653
    .local v3, page:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 2654
    .local v2, layout:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2655
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2656
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 2661
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v3           #page:Lcom/android/launcher2/CellLayoutMenu;
    :goto_2
    return-object v0

    .line 2654
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #i:I
    .restart local v2       #layout:Landroid/view/ViewGroup;
    .restart local v3       #page:Lcom/android/launcher2/CellLayoutMenu;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2651
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2661
    .end local v1           #i:I
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v3           #page:Lcom/android/launcher2/CellLayoutMenu;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getActiveTitleBarForState()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 2168
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$8;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2187
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "unknown state when asking for title bar"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2174
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2178
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2180
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2182
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 2185
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 2168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public getItemViews()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2299
    new-instance v0, Lcom/android/launcher2/ChainIterable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->grandchildren()Ljava/lang/Iterable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ChainIterable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 2301
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->grandchildren()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0
.end method

.method public getOpenFolderId()J
    .locals 3

    .prologue
    .line 2725
    const-wide/16 v0, -0x1

    .line 2726
    .local v0, folderId:J
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 2727
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    .line 2730
    :cond_0
    return-wide v0
.end method

.method getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;
    .locals 4
    .parameter "screen"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    .line 626
    .local v2, pageCount:I
    if-ge p1, v2, :cond_0

    .line 628
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher2/MenuAppsGrid;->syncPageItems(IZ)V

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    .line 635
    :goto_0
    return-object v3

    .line 631
    :cond_0
    const/4 v1, 0x0

    .line 632
    .local v1, page:Lcom/android/launcher2/CellLayoutMenu;
    move v0, v2

    .local v0, i:I
    :goto_1
    if-gt v0, p1, :cond_1

    .line 633
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 635
    goto :goto_0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    .prologue
    .line 2841
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    .prologue
    .line 2846
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2194
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "state"

    .prologue
    .line 2202
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBarHight()I
    .locals 1

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 2162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 7
    .parameter "aRect"

    .prologue
    const/4 v2, 0x1

    .line 2592
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v3, :cond_0

    .line 2593
    const/4 v1, 0x0

    .line 2610
    :goto_0
    return v1

    .line 2595
    :cond_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2600
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2601
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v3, 0x7f070051

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2602
    .local v0, bb:Landroid/view/View;
    if-eqz v0, :cond_1

    move v1, v2

    .line 2603
    goto :goto_0

    .line 2606
    .end local v0           #bb:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f070048

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2607
    .restart local v0       #bb:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2608
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    move v1, v2

    .line 2610
    goto :goto_0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4
    .parameter "newState"
    .parameter "oldState"

    .prologue
    .line 2234
    const-string v1, "Launcher.MenuAppsGrid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher2/MenuAppsGrid$State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/MenuAppsGrid$State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v1, :cond_1

    .line 2236
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 2237
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 2238
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 2240
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCollectStateChangeAnimators:Ljava/util/ArrayList;

    .line 2244
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    .line 2245
    .local v0, stateObj:Lcom/android/launcher2/MenuAppsGrid$StateObj;
    if-eqz v0, :cond_3

    .line 2246
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getItemViews()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItems(Ljava/lang/Iterable;)V

    .line 2247
    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2250
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    .line 2251
    if-eqz v0, :cond_4

    .line 2252
    invoke-virtual {v0, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enter(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2253
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getItemViews()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItems(Ljava/lang/Iterable;)V

    .line 2255
    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2256
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mCollectStateChangeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCollectStateChangeAnimators:Ljava/util/ArrayList;

    .line 2258
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2259
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$4;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$4;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2270
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2272
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v1, :cond_5

    .line 2273
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 2275
    :cond_5
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 1
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    .line 546
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    .line 552
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 553
    return-void
.end method

.method public leaveCurrentState()V
    .locals 4

    .prologue
    .line 2206
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    .line 2208
    .local v0, oldState:Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_1

    .line 2209
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 2211
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 2212
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 2214
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCollectStateChangeAnimators:Ljava/util/ArrayList;

    .line 2216
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItems(Ljava/lang/Iterable;)V

    .line 2217
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2219
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2220
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mCollectStateChangeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCollectStateChangeAnimators:Ljava/util/ArrayList;

    .line 2222
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2223
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2225
    return-void
.end method

.method protected onAddItem(Lcom/android/launcher2/AppIconView;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 525
    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 527
    new-instance v1, Lcom/android/launcher2/MenuAppGridIconKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher2/MenuAppGridIconKeyEventListener;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/launcher2/AppIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItems(Ljava/lang/Iterable;)V

    .line 532
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 195
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 196
    .local v0, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    .line 198
    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0           #item:Lcom/android/launcher2/AppItem;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    .line 201
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    .line 2963
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2965
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->handleScrollOnOrientationChange()V

    .line 2966
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2968
    .local v4, r:Landroid/content/res/Resources;
    const v5, 0x7f0c0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2969
    .local v2, marginTop:I
    const v5, 0x7f0c0048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2970
    .local v1, cellWidth:I
    const v5, 0x7f0c0049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2972
    .local v0, cellHeight:I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 2973
    .local v3, oldCountX:I
    const v5, 0x7f0a0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 2974
    const v5, 0x7f0a0031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 2975
    const v5, 0x7f0c004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    .line 2976
    const v5, 0x7f0c004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    .line 2977
    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 2979
    const v5, 0x7f0c004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0c004c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher2/MenuAppsGrid;->updateIndicator(II)V

    .line 2981
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->updateGridSize(III)V

    .line 2982
    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->updatePageLayout(I)V

    .line 2984
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->requestLayout()V

    .line 2985
    return-void
.end method

.method public onExitAllApps()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 429
    return-void
.end method

.method public onFolderNameChange(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2765
    sget-object v0, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v0, v1, :cond_0

    .line 2771
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$7;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->post(Ljava/lang/Runnable;)Z

    .line 2780
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 656
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 657
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v1}, Lcom/android/launcher2/PanelDrawer;->hasLoadedResources()Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PanelDrawer;->loadResources(Landroid/content/res/Resources;)V

    .line 659
    :cond_0
    if-eqz p1, :cond_1

    .line 660
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 661
    .local v0, rootView:Landroid/view/View;
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 704
    .end local v0           #rootView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public openFolder(Lcom/android/launcher2/FolderItem;Z)V
    .locals 9
    .parameter "folderItem"
    .parameter "animateOpen"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 353
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .line 356
    .local v1, icon:Lcom/android/launcher2/FolderIconView;
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 358
    .local v3, parentView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_2

    .line 359
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    invoke-virtual {v1, v4}, Lcom/android/launcher2/FolderIconView;->getLocationOnScreen([I)V

    .line 365
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 367
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 368
    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 371
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    .line 372
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iput-object p0, v4, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    .line 373
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a003b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v4, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 374
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/Folder;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 375
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V

    .line 378
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    sget-object v7, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v4, v7, :cond_8

    move v2, v5

    .line 380
    .local v2, isAlphaGrid:Z
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v4, v4, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-nez v2, :cond_5

    move v6, v5

    :cond_5
    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    .line 381
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-direct {v6, p0, v1, p2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    .line 385
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 386
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v4, v6, v3, p2}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    .line 387
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 388
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 392
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 395
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItems(Ljava/lang/Iterable;)V

    goto/16 :goto_0

    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #isAlphaGrid:Z
    :cond_8
    move v2, v6

    .line 378
    goto :goto_1
.end method

.method public releaseShadows()V
    .locals 8

    .prologue
    .line 2888
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v2

    .line 2889
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2890
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 2891
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 2893
    .local v5, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2894
    .local v0, ccout:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 2895
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2896
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    .line 2897
    check-cast v6, Lcom/android/launcher2/AppIconView;

    .end local v6           #v:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 2894
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2889
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2901
    .end local v0           #ccout:I
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v4           #j:I
    .end local v5           #l:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method public restoreOpenFolderState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 2686
    if-nez p1, :cond_1

    .line 2704
    :cond_0
    :goto_0
    return-void

    .line 2693
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isDataReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2694
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 2698
    :cond_2
    const-string v3, "openFolderId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2699
    .local v1, openFolderId:J
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 2700
    .local v0, item:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/launcher2/FolderItem;

    if-eqz v3, :cond_0

    .line 2701
    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0           #item:Lcom/android/launcher2/AppItem;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    .line 2702
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public revertEditChanges()V
    .locals 1

    .prologue
    .line 2478
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editRevert()V

    .line 2479
    return-void
.end method

.method rotateFolder()V
    .locals 1

    .prologue
    .line 2956
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 2957
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->handleOrientationChange()V

    .line 2959
    :cond_0
    return-void
.end method

.method public saveEditChanges()V
    .locals 1

    .prologue
    .line 2474
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2475
    return-void
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 2672
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v1, :cond_1

    .line 2683
    :cond_0
    :goto_0
    return-void

    .line 2673
    :cond_1
    const-string v1, "openFolderId"

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolderId()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2675
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2676
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    .line 2677
    .local v0, text:Landroid/widget/EditText;
    const-string v1, "pendingFolderEditText"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    const-string v1, "pending_folder_edit_text_selection_start"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2680
    const-string v1, "pending_folder_edit_text_selection_end"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 0

    .prologue
    .line 2518
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->setDataIsReady()V

    .line 2519
    return-void
.end method

.method public setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    .line 148
    return-void
.end method

.method public setNormalTitleBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 155
    :cond_0
    return-void
.end method

.method public setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v1

    #setter for: Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->access$5002(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J

    .line 2643
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuTabHost;)V
    .locals 5
    .parameter "tabHost"

    .prologue
    .line 2311
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 2341
    :goto_0
    return-void

    .line 2312
    :cond_0
    const v3, 0x7f070058

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 2313
    const v3, 0x7f07005a

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    .line 2314
    const v3, 0x7f07005b

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mUninstallTitleBar:Landroid/view/View;

    .line 2315
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v4, 0x7f07003f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2316
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v4, 0x7f070069

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2318
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2319
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2320
    .local v1, editTitleBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 2321
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2322
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/TitleBarKeyEventListener;

    invoke-direct {v4}, Lcom/android/launcher2/TitleBarKeyEventListener;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2321
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2327
    .end local v1           #editTitleBar:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTitleBar:Landroid/view/ViewGroup;

    const v4, 0x7f070050

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2328
    .local v0, back:Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2330
    :cond_2
    const v3, 0x7f070061

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    .line 2331
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    .line 2332
    const v3, 0x7f070060

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    .line 2335
    :cond_3
    const v3, 0x7f07005d

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    .line 2336
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    .line 2337
    const v3, 0x7f07005c

    invoke-virtual {p1, v3}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    .line 2340
    :cond_4
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    goto/16 :goto_0
.end method

.method public setViewType(Lcom/android/launcher2/MenuFragment$ViewType;)V
    .locals 4
    .parameter "viewType"

    .prologue
    .line 2622
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    if-eq v2, p1, :cond_1

    .line 2623
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    .line 2625
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 2626
    sget-object v2, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuFragment$ViewType;

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 2627
    .local v0, enableReOrdering:Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setEnabled(Z)V

    .line 2630
    .end local v0           #enableReOrdering:Z
    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 2631
    .local v1, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2632
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    .line 2633
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 2636
    .end local v1           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_1
    return-void

    .line 2626
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 590
    return-void
.end method

.method public syncPages()V
    .locals 8

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 559
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->removeAllViews()V

    .line 561
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    .line 562
    .local v0, appsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 566
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 567
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 568
    .local v3, item:Lcom/android/launcher2/AppItem;
    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->addAppItem(Lcom/android/launcher2/AppItem;)V

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 574
    .end local v3           #item:Lcom/android/launcher2/AppItem;
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v6, :cond_3

    .line 575
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 576
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 577
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 578
    .local v5, v:Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    .end local v5           #v:Landroid/view/View;
    invoke-virtual {v6, v5}, Lcom/android/launcher2/Folder;->notifyFolderIconChanged(Lcom/android/launcher2/FolderIconView;)V

    .line 582
    .end local v4           #tag:Ljava/lang/Object;
    :cond_3
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 583
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    goto :goto_0
.end method

.method updateGridSize(III)V
    .locals 12
    .parameter "marginTop"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    const v11, 0x7f0f001a

    .line 2919
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2920
    .local v5, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v4

    .line 2921
    .local v4, childCount:I
    sget-object v10, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v5, v11, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2924
    .local v0, appearance:Landroid/content/res/TypedArray;
    sget-object v10, Landroid/R$styleable;->View:[I

    invoke-virtual {v5, v11, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2928
    .local v1, appearance2:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 2929
    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2930
    .local v3, child:Landroid/view/View;
    instance-of v10, v3, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v10, :cond_0

    move-object v2, v3

    .line 2931
    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    .line 2932
    .local v2, cellMenu:Lcom/android/launcher2/CellLayoutMenu;
    iget v10, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v11, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v2, v10, v11}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    .line 2933
    invoke-virtual {v2, p2}, Lcom/android/launcher2/CellLayoutMenu;->setCellWidth(I)V

    .line 2934
    invoke-virtual {v2, p3}, Lcom/android/launcher2/CellLayoutMenu;->setCellHeight(I)V

    .line 2935
    iget v10, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    invoke-virtual {v2, v10}, Lcom/android/launcher2/CellLayoutMenu;->setGapX(I)V

    .line 2936
    iget v10, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    invoke-virtual {v2, v10}, Lcom/android/launcher2/CellLayoutMenu;->setGapY(I)V

    .line 2937
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMenu;->refreshCellDimension()V

    .line 2939
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 2940
    .local v9, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2941
    invoke-virtual {v2, v9}, Lcom/android/launcher2/CellLayoutMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2943
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMenu;->getPageChildCount()I

    move-result v10

    if-ge v8, v10, :cond_0

    .line 2944
    invoke-virtual {v2, v8}, Lcom/android/launcher2/CellLayoutMenu;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppIconView;

    .line 2945
    .local v6, grandChild:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/AppIconView;->applyStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 2943
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2928
    .end local v2           #cellMenu:Lcom/android/launcher2/CellLayoutMenu;
    .end local v6           #grandChild:Lcom/android/launcher2/AppIconView;
    .end local v8           #j:I
    .end local v9           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2950
    .end local v3           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2951
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2953
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 13
    .parameter "v"
    .parameter "scrollProgress"

    .prologue
    const/high16 v9, 0x3f00

    const/high16 v12, -0x3e80

    const/4 v11, 0x0

    .line 710
    if-nez p1, :cond_0

    .line 760
    .end local p1
    :goto_0
    return-void

    .line 714
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->fastInvalidate()V

    .line 716
    const/4 v6, 0x0

    .line 717
    .local v6, translationX:F
    const/4 v1, 0x0

    .line 718
    .local v1, fixedPosition:Z
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isLoopingEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 719
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 720
    .local v2, i:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 721
    .local v4, pageWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 726
    .local v3, pageHeight:I
    int-to-float v7, v4

    mul-float/2addr v7, v9

    int-to-float v8, v4

    mul-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/launcher2/MenuAppsGrid;->mix(FFF)F

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    .line 729
    int-to-float v7, v3

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 731
    if-nez v2, :cond_3

    cmpg-float v7, p2, v11

    if-gez v7, :cond_3

    .line 733
    mul-float v7, v12, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 735
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v7

    int-to-float v6, v7

    .line 736
    const/4 v1, 0x1

    .line 747
    .end local v2           #i:I
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    :cond_1
    :goto_1
    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 748
    .local v5, pageZoom:F
    invoke-virtual {p1, v5}, Landroid/view/View;->setFastScaleX(F)V

    .line 749
    invoke-virtual {p1, v5}, Landroid/view/View;->setFastScaleY(F)V

    .line 750
    if-nez v1, :cond_2

    .line 751
    const/high16 v7, 0x3f80

    sub-float/2addr v7, v5

    mul-float/2addr v7, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4020

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 753
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->setFastTranslationX(F)V

    .line 758
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v0

    .line 759
    .local v0, darkenAmount:F
    check-cast p1, Lcom/android/launcher2/CellLayout;

    .end local p1
    iget v7, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    invoke-virtual {p1, v7, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FF)V

    goto :goto_0

    .line 737
    .end local v0           #darkenAmount:F
    .end local v5           #pageZoom:F
    .restart local v2       #i:I
    .restart local v3       #pageHeight:I
    .restart local v4       #pageWidth:I
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_4

    cmpl-float v7, p2, v11

    if-lez v7, :cond_4

    .line 739
    mul-float v7, v12, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 741
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 742
    const/4 v1, 0x1

    goto :goto_1

    .line 744
    :cond_4
    invoke-virtual {p1, v11}, Landroid/view/View;->setFastRotationY(F)V

    goto :goto_1
.end method

.method updateQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 2913
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-eqz v0, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->updateQuickView()V

    .line 2916
    :cond_0
    return-void
.end method
