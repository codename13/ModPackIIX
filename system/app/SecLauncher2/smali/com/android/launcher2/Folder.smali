.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Folder$FolderNameChangeListener;,
        Lcom/android/launcher2/Folder$FolderVertScroller;,
        Lcom/android/launcher2/Folder$FolderManager;
    }
.end annotation


# static fields
.field public static final FOLDER_TCHEVHDL_CLOSED:I = 0x2

.field public static final FOLDER_TCHEVHDL_EDIT_CANCELLED:I = 0x1

.field public static final FOLDER_TCHEVHDL_UNPROCESSED:I = 0x3

.field static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sHintText:Ljava/lang/String;


# instance fields
.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

.field protected mContent:Lcom/android/launcher2/CellLayoutNoGap;

.field mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

.field mExpandDuration:I

.field mFixedWidth:I

.field mFolderDestinationX:F

.field mFolderDestinationY:F

.field private mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

.field mFolderName:Lcom/android/launcher2/FolderEditText;

.field private mFolderNameChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/Folder$FolderNameChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderNameHeight:I

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private mIgnoreShrinkingFolder:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher2/FolderItem;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mMaxCountX:I

.field private mMaxFolderVisibleCols:I

.field private mMaxFolderVisibleRows:I

.field mMenu:Lcom/android/launcher2/MenuAppsGrid;

.field final mOnExitAlarm:Lcom/android/launcher2/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field mOtherParent:Landroid/view/ViewGroup;

.field private mScrollView:Landroid/view/View;

.field private final mShowHotseatTitle:Z

.field mSuppressOnAdd:Z

.field private mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 86
    new-instance v1, Lcom/android/launcher2/Alarm;

    invoke-direct {v1}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    .line 92
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 97
    iput v3, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 98
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    .line 225
    new-instance v1, Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$FolderVertScroller;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    .line 315
    new-instance v1, Lcom/android/launcher2/Folder$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$4;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 704
    iput v2, p0, Lcom/android/launcher2/Folder;->mFolderDestinationX:F

    .line 705
    iput v2, p0, Lcom/android/launcher2/Folder;->mFolderDestinationY:F

    .line 998
    new-instance v1, Lcom/android/launcher2/Folder$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$7;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090004

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mShowHotseatTitle:Z

    .line 113
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    .line 117
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 123
    const v1, 0x7f0e006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    .line 129
    return-void

    .line 110
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const v1, 0x7f090003

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/Folder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Folder;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/Folder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishSetup()V

    return-void
.end method

.method private animateOpen()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 763
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 764
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->prepareForOpenAnimate()V

    .line 766
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 767
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mFolderDestinationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mFolderDestinationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/Folder$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$5;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 787
    return-void
.end method

.method private finishSetup()V
    .locals 6

    .prologue
    const/high16 v5, 0x4000

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    .line 300
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v1

    .line 301
    .local v1, maxHtAllowed:I
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredWidthForColumns(I)I

    move-result v2

    .line 302
    .local v2, maxWdAllowed:I
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    .line 303
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 305
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 306
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;
    .locals 3
    .parameter "context"

    .prologue
    .line 684
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method private getCustomLayoutParams()Lcom/android/launcher2/DragLayer$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    check-cast v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 696
    .restart local v0       #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    :goto_0
    return-object v0

    .line 692
    :cond_0
    new-instance v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .end local v0           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 693
    .restart local v0       #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 694
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 4
    .parameter "item"

    .prologue
    .line 1136
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1138
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1139
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1144
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_2
    return-object v2

    .line 1137
    .restart local v0       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1136
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1144
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private notifyFolderNameChangeListeners(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1190
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder$FolderNameChangeListener;

    .line 1191
    .local v1, listener:Lcom/android/launcher2/Folder$FolderNameChangeListener;
    invoke-interface {v1, p1}, Lcom/android/launcher2/Folder$FolderNameChangeListener;->onFolderNameChange(Ljava/lang/String;)V

    goto :goto_0

    .line 1193
    .end local v1           #listener:Lcom/android/launcher2/Folder$FolderNameChangeListener;
    :cond_0
    return-void
.end method

.method private onCloseComplete()V
    .locals 2

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1101
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1104
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearFocus()V

    .line 1105
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1107
    return-void
.end method

.method private openFolderWithoutAnimation()V
    .locals 0

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 760
    return-void
.end method

.method private prepareForOpenAnimate()V
    .locals 7

    .prologue
    const v6, 0x3e4ccccd

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 707
    new-array v1, v5, [I

    .line 708
    .local v1, iconLocation:[I
    new-array v0, v5, [I

    .line 709
    .local v0, folderLocation:[I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 710
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getLocationOnScreen([I)V

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/MenuTabHost;

    if-eqz v3, :cond_0

    .line 715
    new-array v2, v5, [I

    .line 716
    .local v2, otherParentLoc:[I
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 717
    aget v3, v2, v4

    aput v3, v0, v4

    .line 720
    .end local v2           #otherParentLoc:[I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->getFolderIconOrigin([I)V

    .line 722
    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setTranslationX(F)V

    .line 723
    aget v3, v1, v4

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setTranslationY(F)V

    .line 725
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher2/Folder;->mFolderDestinationX:F

    .line 726
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher2/Folder;->mFolderDestinationY:F

    .line 728
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->setScaleX(F)V

    .line 729
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->setScaleY(F)V

    .line 730
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setAlpha(F)V

    .line 731
    return-void
.end method

.method private scrollIfNeeded(Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 961
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-gt v8, v9, :cond_1

    :cond_0
    move v6, v7

    .line 980
    :goto_0
    return v6

    .line 964
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    .line 965
    .local v5, y:F
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v1

    .line 966
    .local v1, cellHt:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v8

    div-int/lit8 v9, v1, 0x3

    add-int v4, v8, v9

    .line 967
    .local v4, topScrollCutOff:I
    int-to-float v8, v4

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    .line 968
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollUp()V

    goto :goto_0

    .line 971
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getMeasuredHeight()I

    move-result v2

    .line 972
    .local v2, mh:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v3

    .line 974
    .local v3, pb:I
    sub-int v8, v2, v3

    div-int/lit8 v9, v1, 0x3

    sub-int v0, v8, v9

    .line 975
    .local v0, bottomScrollCutOff:I
    int-to-float v8, v0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    .line 976
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollDown()V

    goto :goto_0

    .line 979
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    move v6, v7

    .line 980
    goto :goto_0
.end method

.method private setupContentDimensions(I)V
    .locals 7
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 1016
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    .line 1017
    .local v0, countX:I
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v1

    .line 1018
    .local v1, countY:I
    iget v6, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    if-lez v6, :cond_0

    .line 1019
    iget v0, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 1021
    :cond_0
    const/4 v2, 0x0

    .line 1023
    .local v2, done:Z
    :goto_0
    if-nez v2, :cond_7

    .line 1024
    move v3, v0

    .line 1025
    .local v3, oldCountX:I
    move v4, v1

    .line 1026
    .local v4, oldCountY:I
    mul-int v6, v0, v1

    if-ge v6, p1, :cond_3

    .line 1028
    iget v6, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    if-gtz v6, :cond_2

    if-gt v0, v1, :cond_2

    iget v6, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    if-ge v0, v6, :cond_2

    .line 1029
    add-int/lit8 v0, v0, 0x1

    .line 1033
    :goto_1
    if-nez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1039
    :cond_1
    :goto_2
    if-ne v0, v3, :cond_6

    if-ne v1, v4, :cond_6

    const/4 v2, 0x1

    .line 1040
    :goto_3
    goto :goto_0

    .line 1031
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1034
    :cond_3
    add-int/lit8 v6, v1, -0x1

    mul-int/2addr v6, v0

    if-lt v6, p1, :cond_5

    iget v6, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    if-gtz v6, :cond_4

    if-lt v1, v0, :cond_5

    .line 1035
    :cond_4
    add-int/lit8 v6, v1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 1036
    :cond_5
    iget v6, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    if-gtz v6, :cond_1

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v6, v1

    if-lt v6, p1, :cond_1

    .line 1037
    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_6
    move v2, v5

    .line 1039
    goto :goto_3

    .line 1041
    .end local v3           #oldCountX:I
    .end local v4           #oldCountY:I
    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 1042
    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 1078
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/DragLayer;

    if-nez v0, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1081
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    goto :goto_0
.end method

.method private updateTextViewFocus()V
    .locals 4

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    .line 1113
    .local v1, lastChild:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 1114
    .local v0, firstChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    .line 1115
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusDownId(I)V

    .line 1117
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusRightId(I)V

    .line 1118
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusLeftId(I)V

    .line 1119
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusUpId(I)V

    .line 1121
    :cond_0
    return-void
.end method


# virtual methods
.method public addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    return-void
.end method

.method public addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 0
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 430
    return-void
.end method

.method bind(Lcom/android/launcher2/FolderItem;)V
    .locals 18
    .parameter "info"

    .prologue
    .line 594
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v14}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 595
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    .line 596
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v12, overflow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/BaseItem;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v11

    .line 599
    .local v11, numContentItems:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v14, :cond_0

    .line 600
    add-int/lit8 v11, v11, 0x1

    .line 602
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 604
    const/4 v6, 0x0

    .line 605
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v14

    if-ge v7, v14, :cond_2

    .line 606
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    .line 607
    .local v5, child:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 608
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 610
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 616
    .end local v5           #child:Lcom/android/launcher2/BaseItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v14, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 617
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 622
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/BaseItem;

    .line 623
    .local v9, item:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v14, v9}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 625
    instance-of v14, v9, Lcom/android/launcher2/HomeItem;

    if-eqz v14, :cond_4

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v9, Lcom/android/launcher2/HomeItem;

    .end local v9           #item:Lcom/android/launcher2/BaseItem;
    invoke-static {v14, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    .line 630
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v15}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 638
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v15, 0x7f07001c

    invoke-virtual {v14, v15}, Lcom/android/launcher2/CellLayoutNoGap;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 639
    .local v3, button:Landroid/view/View;
    const/4 v2, 0x0

    .line 643
    .local v2, addButtonExists:Z
    if-nez v3, :cond_7

    .line 644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f03000b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 645
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    new-instance v14, Lcom/android/launcher2/FolderAddItemKeyEventListener;

    invoke-direct {v14}, Lcom/android/launcher2/FolderAddItemKeyEventListener;-><init>()V

    invoke-virtual {v3, v14}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 655
    :goto_3
    const/4 v14, 0x2

    new-array v4, v14, [I

    .line 656
    .local v4, cell:[I
    const/4 v14, 0x2

    new-array v13, v14, [I

    .line 657
    .local v13, pixel:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v14, v4}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace([I)V

    .line 658
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v15, 0x0

    aget v15, v4, v15

    const/16 v16, 0x1

    aget v16, v4, v16

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    .line 659
    new-instance v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v10, v14, v15, v0, v1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 660
    .local v10, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v14, 0x0

    aget v14, v13, v14

    iput v14, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 661
    const/4 v14, 0x1

    aget v14, v13, v14

    iput v14, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 662
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutNoGap;->getCellWidth()I

    move-result v14

    iput v14, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v14

    iput v14, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 667
    if-eqz v2, :cond_8

    .line 668
    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    .end local v2           #addButtonExists:Z
    .end local v3           #button:Landroid/view/View;
    .end local v4           #cell:[I
    .end local v10           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v13           #pixel:[I
    :cond_6
    :goto_4
    return-void

    .line 648
    .restart local v2       #addButtonExists:Z
    .restart local v3       #button:Landroid/view/View;
    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    .line 670
    .restart local v4       #cell:[I
    .restart local v10       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v13       #pixel:[I
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v14, v3, v10}, Lcom/android/launcher2/CellLayoutNoGap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method public cancelCloseFolderAlarm()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 1013
    return-void
.end method

.method public centerAboutIcon()V
    .locals 12

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1048
    .local v7, realParent:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    .line 1049
    .local v2, icon:Landroid/view/View;
    const/4 v10, 0x2

    new-array v3, v10, [I

    .line 1050
    .local v3, iconLocation:[I
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1052
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/DragLayer$LayoutParams;

    move-result-object v5

    .line 1054
    .local v5, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredWidth()I

    move-result v11

    add-int v9, v10, v11

    .line 1055
    .local v9, width:I
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeight()I

    move-result v0

    .line 1056
    .local v0, contentHt:I
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v11, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    invoke-virtual {v10, v11}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v6

    .line 1057
    .local v6, maxHtAllowed:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    add-int v1, v10, v11

    .line 1060
    .local v1, height:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    div-int/lit8 v4, v10, 0x2

    .line 1061
    .local v4, left:I
    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v8, v10, v11

    .line 1063
    .local v8, top:I
    add-int v10, v8, v1

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_0

    .line 1064
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    sub-int v8, v10, v1

    .line 1067
    :cond_0
    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1068
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1069
    iput v4, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 1070
    iput v8, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 1071
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    return-void
.end method

.method public close(Z)V
    .locals 11
    .parameter "commitEdit"

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const v8, 0x3e4ccccd

    .line 790
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 795
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 797
    new-array v1, v7, [I

    .line 798
    .local v1, folderOriginXY:[I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->getFolderIconOrigin([I)V

    .line 800
    const/4 v6, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 801
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    aget v7, v1, v10

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v1, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/Folder$6;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Folder$6;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 817
    iget-boolean v6, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    if-nez v6, :cond_1

    .line 818
    const-wide/16 v3, 0x64

    .line 819
    .local v3, kExtraDurationOnClose:J
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v7, v7

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 825
    .end local v3           #kExtraDurationOnClose:J
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v5

    .line 826
    .local v5, l:Lcom/android/launcher2/AnimationLayer;
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 827
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 828
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AnimationLayer;->cancelAnimationFor(Landroid/view/View;)V

    .line 827
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 831
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v6}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose()V

    .line 832
    return-void
.end method

.method public completeDragExit()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 1008
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->close(Z)V

    .line 1009
    return-void
.end method

.method protected createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    .line 888
    const/4 v1, 0x0

    .line 890
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002a

    const/4 v6, 0x0

    invoke-virtual {v0, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 892
    .restart local v1       #icon:Lcom/android/launcher2/AppIconView;
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v7, v0, v7, v7}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 894
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    .line 897
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 898
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AppIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 900
    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v5, v5}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 901
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    new-instance v0, Lcom/android/launcher2/FolderKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher2/FolderKeyEventListener;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 902
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-wide v6, p1, Lcom/android/launcher2/BaseItem;->mId:J

    long-to-int v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutNoGap;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 903
    return v5
.end method

.method public disableChildBadges()V
    .locals 3

    .prologue
    .line 1175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1176
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1177
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->hideBadge()V

    .line 1175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1179
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method public dismissEditingName(Z)V
    .locals 3
    .parameter "commitChange"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 457
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 985
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 986
    .local v0, r:Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 992
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 994
    :cond_1
    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "aCanvas"

    .prologue
    .line 956
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 957
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 958
    return-void
.end method

.method public doneEditingFolderName(Z)V
    .locals 10
    .parameter "commit"

    .prologue
    const/4 v9, 0x0

    .line 460
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v8, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/Folder;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 463
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 464
    if-eqz p1, :cond_3

    .line 468
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, newFolderName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 471
    sget-boolean v7, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    instance-of v7, v7, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v7, :cond_0

    .line 472
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v3, Lcom/android/launcher2/HomeFolderItem;

    .line 474
    .local v3, homeFolder:Lcom/android/launcher2/HomeFolderItem;
    iget-boolean v7, v3, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v7, :cond_0

    .line 475
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v7

    iget v8, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v7, v8}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v7

    iput v7, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 478
    .end local v3           #homeFolder:Lcom/android/launcher2/HomeFolderItem;
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Lcom/android/launcher2/FolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, v4}, Lcom/android/launcher2/Folder;->notifyFolderNameChangeListeners(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 484
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 485
    .local v6, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    const-string v7, "Folder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "folder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0070

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, folder:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 494
    .end local v0           #folder:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    .end local v6           #title:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 497
    .local v5, tag:Ljava/lang/Object;
    iget-boolean v7, p0, Lcom/android/launcher2/Folder;->mShowHotseatTitle:Z

    if-nez v7, :cond_3

    instance-of v7, v5, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v7, :cond_3

    .line 498
    check-cast v5, Lcom/android/launcher2/HomeFolderItem;

    .end local v5           #tag:Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/android/launcher2/HomeFolderItem;->getContainer()J

    move-result-wide v1

    .line 499
    .local v1, folderContainer:J
    const-wide/16 v7, -0x65

    cmp-long v7, v1, v7

    if-nez v7, :cond_3

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/FolderIconView;->setTextVisible(Z)V

    .line 504
    .end local v1           #folderContainer:J
    .end local v4           #newFolderName:Ljava/lang/String;
    :cond_3
    iput-boolean v9, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 505
    return-void
.end method

.method public enableChildBadges()V
    .locals 3

    .prologue
    .line 1168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1169
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1170
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1172
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "v"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 424
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getEditTextRegion()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    return-object v0
.end method

.method public getFolderIconOrigin([I)V
    .locals 6
    .parameter "xy"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1232
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1233
    .local v0, iconLocation:[I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1235
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/DragLayer$LayoutParams;

    move-result-object v1

    .line 1237
    .local v1, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    aget v2, v0, v4

    iget v3, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, p1, v4

    .line 1238
    aget v2, v0, v5

    iget v3, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aput v2, p1, v5

    .line 1239
    return-void
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getInfo()Lcom/android/launcher2/FolderItem;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemViews()Ljava/lang/Iterable;
    .locals 2
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
    .line 1096
    new-instance v0, Lcom/android/launcher2/ChildIterable;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/ChildIterable;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public handleOrientationChange()V
    .locals 7

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1243
    .local v4, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v6, 0x7f0c0021

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setCellWidth(I)V

    .line 1244
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v6, 0x7f0c0022

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setCellHeight(I)V

    .line 1245
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v6, 0x7f0c0072

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setGapX(I)V

    .line 1246
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v6, 0x7f0c0073

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setGapY(I)V

    .line 1247
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutNoGap;->refreshCellDimension()V

    .line 1248
    const v5, 0x7f0a003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 1250
    const v5, 0x7f0c0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1251
    .local v1, paddingL:I
    const/4 v3, 0x0

    .line 1252
    .local v3, paddingT:I
    const v5, 0x7f0c0075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1253
    .local v2, paddingR:I
    const v5, 0x7f0c0076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1254
    .local v0, paddingB:I
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v5, v1, v3, v2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setPadding(IIII)V

    .line 1257
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->updateLayout()V

    .line 1260
    new-instance v5, Lcom/android/launcher2/Folder$8;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$8;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->post(Ljava/lang/Runnable;)Z

    .line 1270
    return-void
.end method

.method public handleTouchOutsideBounds(Landroid/view/MotionEvent;Landroid/view/ViewGroup;)I
    .locals 7
    .parameter "ev"
    .parameter "caller"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 841
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getHeight()I

    move-result v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 843
    .local v1, folderRect:Landroid/graphics/Rect;
    invoke-virtual {p2, p0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 844
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 845
    .local v0, evPt:Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 846
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 847
    const/4 v2, 0x3

    .line 848
    .local v2, res:I
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 851
    const/4 v2, 0x1

    .line 857
    :cond_0
    :goto_0
    return v2

    .line 853
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->close(Z)V

    .line 854
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public ignoreShrinkingFolder()V
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 756
    return-void
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->removeAllViews()V

    .line 864
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 865
    return-void
.end method

.method notifyFolderIconChanged(Lcom/android/launcher2/FolderIconView;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 875
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 1125
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1200
    const-string v1, "Launcher.Folder"

    const-string v2, "Folder::onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1202
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1203
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1204
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1208
    const-string v1, "Launcher.Folder"

    const-string v2, "Folder::onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1210
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1211
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1212
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 1213
    return-void
.end method

.method public onDragEndedWithItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 418
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Landroid/view/View;)V

    .line 419
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 923
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v5

    .line 924
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 926
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 936
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->scrollIfNeeded(Landroid/view/DragEvent;)Z

    goto :goto_0

    .line 928
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 929
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 930
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    goto :goto_0

    .line 933
    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 939
    :pswitch_3
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 940
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 943
    :pswitch_4
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    .line 944
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :cond_2
    iget-object v2, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-ne v2, v3, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 948
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    goto :goto_0

    .line 926
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 413
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 414
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 509
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 513
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 230
    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutNoGap;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    .line 231
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-object p0, v1, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    .line 232
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-boolean v4, v1, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    .line 233
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v2, p0, Lcom/android/launcher2/Folder;->mFixedWidth:I

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 234
    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderEditText;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 235
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 236
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setCursorColor(I)V

    .line 238
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v2, Lcom/android/launcher2/Folder$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 250
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v2, Lcom/android/launcher2/Folder$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$2;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v2, Lcom/android/launcher2/Folder$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$3;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, measureSpec:I
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, v0, v0}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 279
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderEditText;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 282
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 283
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 285
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 286
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderEditText;->getInputType()I

    move-result v2

    or-int/lit16 v2, v2, 0x4000

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setInputType(I)V

    .line 290
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishSetup()V

    .line 291
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_4

    .line 532
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 533
    .local v1, hitRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/FolderEditText;->getHitRect(Landroid/graphics/Rect;)V

    .line 534
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 535
    .local v0, evPt:Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 538
    const/4 v2, 0x1

    .line 557
    .end local v0           #evPt:Landroid/graphics/Point;
    .end local v1           #hitRect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v2

    .line 542
    .restart local v0       #evPt:Landroid/graphics/Point;
    .restart local v1       #hitRect:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v3

    if-nez v3, :cond_2

    .line 543
    const/4 v2, 0x1

    goto :goto_0

    .line 545
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 546
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    goto :goto_0

    .line 552
    .end local v0           #evPt:Landroid/graphics/Point;
    .end local v1           #hitRect:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 1150
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 1151
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 16
    .parameter "v"

    .prologue
    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 339
    .local v8, tag:Ljava/lang/Object;
    instance-of v13, v8, Lcom/android/launcher2/BaseItem;

    if-eqz v13, :cond_8

    move-object v4, v8

    .line 340
    check-cast v4, Lcom/android/launcher2/BaseItem;

    .line 341
    .local v4, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v13

    if-nez v13, :cond_0

    .line 342
    const/4 v13, 0x0

    .line 406
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :goto_0
    return v13

    .line 345
    .restart local v4       #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    .line 349
    sget-boolean v13, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v13, :cond_5

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v13

    if-nez v13, :cond_5

    .line 353
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 354
    const v9, 0x7f0e00aa

    .line 358
    .local v9, textId:I
    :goto_1
    new-instance v5, Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 359
    .local v5, myToast:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f03000f

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 360
    .local v6, myToastView:Landroid/view/View;
    const v13, 0x7f07002c

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 361
    .local v10, tv:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00a4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 363
    .local v11, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00a5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 364
    .local v3, h:I
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    .end local v3           #h:I
    .end local v11           #w:I
    :cond_1
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(I)V

    .line 369
    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00a0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 372
    .local v7, posY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c00a1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 374
    .local v12, yGap:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    .line 375
    .local v2, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v2, :cond_3

    .line 376
    iget v1, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 377
    .local v1, cellY:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/launcher2/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x4

    if-le v1, v13, :cond_2

    .line 380
    const/4 v1, 0x4

    .line 381
    add-int/lit8 v7, v7, 0x46

    .line 383
    :cond_2
    mul-int v13, v1, v12

    add-int/2addr v7, v13

    .line 387
    .end local v1           #cellY:I
    :cond_3
    const/16 v13, 0x30

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 388
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 390
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 356
    .end local v2           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v5           #myToast:Landroid/widget/Toast;
    .end local v6           #myToastView:Landroid/view/View;
    .end local v7           #posY:I
    .end local v9           #textId:I
    .end local v10           #tv:Landroid/widget/TextView;
    .end local v12           #yGap:I
    :cond_4
    const v9, 0x7f0e00a8

    .restart local v9       #textId:I
    goto/16 :goto_1

    .line 394
    .end local v9           #textId:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v13, :cond_7

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v13

    sget-object v14, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v13, v14, :cond_6

    .line 398
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    .line 400
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v13

    goto/16 :goto_0

    .line 403
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    .line 404
    new-instance v13, Landroid/os/Vibrator;

    invoke-direct {v13}, Landroid/os/Vibrator;-><init>()V

    const-wide/16 v14, 0x23

    invoke-virtual {v13, v14, v15}, Landroid/os/Vibrator;->vibrate(J)V

    .line 406
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :cond_8
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1129
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 1130
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->removeView(Landroid/view/View;)V

    .line 1133
    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 3
    .parameter "isInTouchMode"

    .prologue
    .line 1217
    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder::onTouchModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    if-nez p1, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 1222
    :cond_0
    return-void
.end method

.method public open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 2
    .parameter "realParent"
    .parameter "pseudoParent"
    .parameter "animate"

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 742
    :cond_0
    iput-object p2, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    .line 744
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 745
    if-eqz p3, :cond_1

    .line 746
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->animateOpen()V

    .line 750
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 751
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->onFolderOpen()V

    .line 752
    return-void

    .line 748
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->openFolderWithoutAnimation()V

    goto :goto_0
.end method

.method public parentLayoutEntered()V
    .locals 3

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 917
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 919
    :cond_0
    return-void
.end method

.method public refreshIconView()V
    .locals 3

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v0

    .line 1159
    .local v0, icon:Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1161
    check-cast v1, Lcom/android/launcher2/FolderIconView;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->setFolderIcon(Lcom/android/launcher2/FolderItem;)Z

    .line 1162
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1163
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0           #icon:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 1165
    :cond_0
    return-void
.end method

.method public removeFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1187
    return-void
.end method

.method public restoreText(Ljava/lang/String;II)Z
    .locals 3
    .parameter "text"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    const/4 v1, 0x1

    .line 144
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    .line 146
    .local v0, textArea:Landroid/widget/EditText;
    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 149
    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 159
    .end local v0           #textArea:Landroid/widget/EditText;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    .line 591
    return-void
.end method

.method setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    .line 562
    return-void
.end method

.method public setHomeFragment(Lcom/android/launcher2/HomeFragment;)V
    .locals 1
    .parameter "home"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 312
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 313
    return-void
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 578
    return-void
.end method

.method public startEditingFolderName()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 451
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 452
    return-void
.end method

.method public startEditingFolderName(Z)V
    .locals 1
    .parameter "giveFocusToEditText"

    .prologue
    .line 441
    if-eqz p1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 445
    return-void
.end method

.method updateLayout()V
    .locals 1

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 1227
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mFolderDestinationX:F

    .line 1228
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mFolderDestinationY:F

    .line 1229
    return-void
.end method
