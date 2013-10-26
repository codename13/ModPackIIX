.class public Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.super Landroid/app/Activity;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private Addition_Icon:Landroid/widget/ImageView;

.field private Addition_IconBar:Landroid/widget/ImageView;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAddButton:Landroid/widget/ImageView;

.field private mAddButtonPositionBar:Landroid/widget/ImageView;

.field private mAdditionImage:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentSoundID:I

.field private mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

.field mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

.field private mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIconChangeAnimator:Landroid/animation/Animator;

.field mIconDragListner:Landroid/view/View$OnDragListener;

.field private mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

.field private mIconSize:I

.field private mIsOnDragging:Z

.field private mIsOnSelecting:Z

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mNumOfSavedShortcut:I

.field private mOnDragItem:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositionBar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPositionBarDragListner:Landroid/view/View$OnDragListener;

.field private mShortCutButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mShortCutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 92
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    .line 93
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Addition_Icon:Landroid/widget/ImageView;

    .line 94
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Addition_IconBar:Landroid/widget/ImageView;

    .line 103
    iput v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    .line 105
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 106
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    .line 107
    iput v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    .line 108
    iput-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mCurrentSoundID:I

    .line 675
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    .line 703
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 726
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    .line 743
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    .line 771
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$5;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->changeShortCut(Landroid/widget/ImageView;)V

    return-void
.end method

.method private addShortcut(ILandroid/content/pm/ResolveInfo;)V
    .locals 7
    .parameter "droped_position"
    .parameter "new_shortcut"

    .prologue
    const/4 v6, 0x0

    .line 486
    iget v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 488
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 490
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 491
    .local v1, inflater:Landroid/view/LayoutInflater;
    mul-int/lit8 v0, p1, 0x2

    .line 493
    .local v0, add_position:I
    const v4, 0x7f040074

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 494
    .local v3, shorcutIcon:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    const v4, 0x7f0a0155

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 495
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 502
    const v4, 0x7f040076

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 504
    .local v2, positionBar:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    const v4, 0x7f0a0157

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 505
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 507
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    invoke-direct {p0, v6, v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 509
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 511
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 512
    return-void
.end method

.method private changeShortCut(Landroid/widget/ImageView;)V
    .locals 6
    .parameter "iv"

    .prologue
    .line 431
    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "changeShortCut"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, dropItemPosition:I
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 434
    .local v1, numOfPositionBar:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    :cond_0
    if-lt v0, v1, :cond_2

    .line 438
    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "Cannot find dropped position"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_1
    return-void

    .line 434
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_2
    const-string v3, "LockScreenShortcutSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOnDragItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , dropItemPosition : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    if-ne v0, v3, :cond_3

    .line 445
    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "dropItemPosition == mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 447
    :cond_3
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    if-le v0, v3, :cond_5

    .line 448
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    .line 449
    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "dropItemPosition > mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 452
    :cond_4
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 453
    .local v2, temp_shortcutlist:Landroid/content/pm/ResolveInfo;
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-direct {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    .line 454
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    .line 460
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V

    goto :goto_1

    .line 456
    .end local v2           #temp_shortcutlist:Landroid/content/pm/ResolveInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 457
    .restart local v2       #temp_shortcutlist:Landroid/content/pm/ResolveInfo;
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-direct {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    .line 458
    invoke-direct {p0, v0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    goto :goto_2
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "iconResId"
    .parameter "activityInfo"

    .prologue
    .line 402
    const-string v8, "LockScreenShortcutSettings"

    const-string v9, "loadAppIcon (2)"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v5, 0x0

    .line 405
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    iget-object v7, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 406
    .local v7, packageName:Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 410
    .local v0, activityName:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v9, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v9, :cond_1

    .end local v0           #activityName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 411
    .local v2, cscIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 412
    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 426
    .end local v2           #cscIcon:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-object v5

    .restart local v0       #activityName:Ljava/lang/String;
    :cond_1
    move-object v0, v7

    .line 410
    goto :goto_0

    .line 415
    .end local v0           #activityName:Ljava/lang/String;
    .restart local v2       #cscIcon:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 416
    .local v1, appRes:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 417
    .local v6, iconDpi:I
    if-eqz v1, :cond_0

    .line 418
    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v1, p1, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 419
    .local v3, d:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 422
    .end local v1           #appRes:Landroid/content/res/Resources;
    .end local v2           #cscIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #iconDpi:I
    :catch_0
    move-exception v4

    .line 423
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "LockScreenShortcutSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "activityInfo"
    .parameter "iconResId"

    .prologue
    .line 390
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "loadAppIcon (1)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 392
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 393
    invoke-direct {p0, p2, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 398
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 395
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    if-ge v1, v2, :cond_0

    .line 396
    invoke-direct {p0, p2, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private removeShortcut(I)V
    .locals 2
    .parameter "item_position"

    .prologue
    .line 477
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 478
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 479
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 480
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 483
    return-void
.end method

.method private saveShortcutList()V
    .locals 6

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut_number_of_apps"

    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    const-string v2, ""

    .line 468
    .local v2, shortcut_app_list:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v0, v3, :cond_0

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, shortcut_app:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v1           #shortcut_app:Ljava/lang/String;
    :cond_0
    const-string v3, "LockScreenShortcutSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shortcut_app_list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut_app_list"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 474
    return-void
.end method

.method private setEnable(Z)V
    .locals 5
    .parameter "desiredState"

    .prologue
    const/4 v4, 0x0

    .line 356
    if-eqz p1, :cond_3

    .line 357
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v0, v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 360
    .local v1, shortcutIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v1           #shortcutIcon:Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_2
    :goto_1
    return-void

    .line 372
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 373
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v0, v2, :cond_5

    .line 374
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 375
    .restart local v1       #shortcutIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_4

    .line 376
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 373
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 383
    .end local v1           #shortcutIcon:Landroid/widget/ImageView;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private showAddButton(Z)V
    .locals 9
    .parameter "remove_state"

    .prologue
    const v8, 0x7f040074

    const v7, 0x7f020248

    const/4 v6, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 548
    if-nez p1, :cond_4

    .line 549
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v3, v4, :cond_2

    .line 551
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 552
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 553
    invoke-virtual {v2, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 554
    .local v1, addbtnlayout:Landroid/view/View;
    const v3, 0x7f0a0155

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 555
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 556
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 559
    .end local v1           #addbtnlayout:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 565
    const v3, 0x7f040076

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, addbtnPositionBarLayout:Landroid/view/View;
    const v3, 0x7f0a0157

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    .line 568
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    .end local v0           #addbtnPositionBarLayout:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 573
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 574
    iput-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 576
    :cond_3
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 577
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 578
    iput-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    goto :goto_0

    .line 583
    :cond_4
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v3, v4, :cond_6

    .line 585
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 586
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-nez v3, :cond_5

    .line 587
    invoke-virtual {v2, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 588
    .restart local v1       #addbtnlayout:Landroid/view/View;
    const v3, 0x7f0a0155

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 589
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 593
    .end local v1           #addbtnlayout:Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 599
    const v3, 0x7f040076

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 601
    .restart local v0       #addbtnPositionBarLayout:Landroid/view/View;
    const v3, 0x7f0a0157

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    .line 602
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 605
    .end local v0           #addbtnPositionBarLayout:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_6
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    .line 606
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 607
    iput-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 609
    :cond_7
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 610
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 611
    iput-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method

.method private startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "Drag started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v15, 0x0

    .line 620
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 621
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 622
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 624
    iget v1, v7, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v7, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    .line 625
    :cond_0
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "Drag shadow dimensions must not be negative"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v1, 0x0

    .line 672
    :goto_0
    return v1

    .line 630
    :cond_1
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .line 632
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 633
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 634
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mWindow"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 637
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 638
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindow;

    .line 640
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mSession"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 641
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 642
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowSession;

    .line 645
    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    move/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v9

    .line 647
    if-eqz v9, :cond_2

    .line 648
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->setSurface(Landroid/view/Surface;)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->draw()V

    .line 651
    const-class v3, Landroid/view/View;

    const-string v4, "getViewRootImpl"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 652
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 653
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 656
    const-class v4, Landroid/view/ViewRootImpl;

    const-string v5, "setLocalDragState"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 657
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 658
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p4, v5, v10

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-virtual {v3, v7}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 663
    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-float v10, v3

    iget v3, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v3

    iget v3, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v14, p2

    invoke-interface/range {v7 .. v14}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 667
    :catch_0
    move-exception v1

    .line 668
    const-string v2, "LockScreenShortcutSettings"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    invoke-virtual {v6}, Landroid/view/Surface;->destroy()V

    :cond_2
    move v1, v15

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 117
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    .line 118
    const/16 v7, 0x65

    if-ne p1, v7, :cond_1

    const/4 v7, -0x1

    if-ne p2, v7, :cond_1

    .line 119
    const-string v7, "selected_package"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    .local v6, selected_package:Ljava/lang/String;
    const-string v7, "selected_activity"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 121
    .local v5, selected_activity:Ljava/lang/String;
    const-string v7, "clicked_view_index"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 122
    .local v2, clicked_view_index:I
    const-string v7, "LockScreenShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selected_package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v7, "LockScreenShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selected_activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v7, "LockScreenShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clicked_view_index : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, LauncherIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x20

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 131
    .local v4, resolve_info:Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 132
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #resolve_info:Landroid/content/pm/ResolveInfo;
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 138
    .restart local v4       #resolve_info:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v2, v7, :cond_3

    .line 139
    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    .line 140
    invoke-direct {p0, v2, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    .line 145
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V

    .line 148
    .end local v0           #LauncherIntent:Landroid/content/Intent;
    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #clicked_view_index:I
    .end local v3           #i:I
    .end local v4           #resolve_info:Landroid/content/pm/ResolveInfo;
    .end local v5           #selected_activity:Ljava/lang/String;
    .end local v6           #selected_package:Ljava/lang/String;
    :cond_1
    return-void

    .line 131
    .restart local v0       #LauncherIntent:Landroid/content/Intent;
    .restart local v1       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2       #clicked_view_index:I
    .restart local v3       #i:I
    .restart local v4       #resolve_info:Landroid/content/pm/ResolveInfo;
    .restart local v5       #selected_activity:Ljava/lang/String;
    .restart local v6       #selected_package:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    .line 143
    iget-boolean v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    invoke-direct {p0, v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_shortcut"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    invoke-direct {p0, p2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setEnable(Z)V

    .line 353
    return-void

    .line 350
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 36
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v30, 0x7f040079

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setContentView(I)V

    .line 162
    const-string v30, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 163
    .local v14, inflater:Landroid/view/LayoutInflater;
    new-instance v30, Landroid/widget/Switch;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 165
    const-string v30, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/media/AudioManager;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 166
    new-instance v30, Landroid/media/SoundPool;

    const/16 v31, 0xa

    const/16 v32, 0x1

    const/16 v33, 0x0

    invoke-direct/range {v30 .. v33}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mSoundPool:Landroid/media/SoundPool;

    .line 167
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/media/audio/ui/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "TW_Touch.ogg"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 170
    .local v10, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mCurrentSoundID:I

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0e0002

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 173
    .local v22, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v22

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    const/16 v31, 0x10

    const/16 v32, 0x10

    invoke-virtual/range {v30 .. v32}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v31, v0

    new-instance v32, Landroid/app/ActionBar$LayoutParams;

    const/16 v33, -0x2

    const/16 v34, -0x2

    const/16 v35, 0x15

    invoke-direct/range {v32 .. v35}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    new-instance v30, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    .line 182
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    .line 183
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    .line 184
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    .line 185
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 188
    .local v25, resources:Landroid/content/res/Resources;
    const v30, 0x7f0e003f

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "lock_screen_shortcut_number_of_apps"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 192
    const-string v30, "LockScreenShortcutSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mNumOfSavedShortcut : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "lock_screen_shortcut_app_list"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, app_list:Ljava/lang/String;
    const-string v30, "LockScreenShortcutSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "app_list : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v15, ""

    .line 197
    .local v15, intent_content:Ljava/lang/String;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v26, savedShortcutName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 199
    .local v13, index:I
    const/16 v19, 0x0

    .line 200
    .local v19, old_index:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_0

    .line 201
    move/from16 v19, v13

    .line 202
    const/16 v30, 0x3b

    move/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 203
    move/from16 v0, v19

    invoke-virtual {v8, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 204
    const/16 v30, 0x2f

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v20

    .line 205
    .local v20, package_index:I
    const/16 v30, 0x0

    move/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 206
    .local v21, package_name:Ljava/lang/String;
    add-int/lit8 v30, v20, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, activity_name:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v30, "LockScreenShortcutSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Index ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ") : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " , package : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " , activity : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    add-int/lit8 v13, v13, 0x1

    .line 200
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 213
    .end local v6           #activity_name:Ljava/lang/String;
    .end local v20           #package_index:I
    .end local v21           #package_name:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 214
    new-instance v5, Landroid/content/Intent;

    const-string v30, "android.intent.action.MAIN"

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v5, LauncherIntent:Landroid/content/Intent;
    const-string v30, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    const/16 v31, 0x20

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 218
    .local v7, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v18, 0x1e

    .line 219
    .local v18, maximum_cache:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 220
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    .line 222
    :cond_1
    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v33

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 226
    :cond_2
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_5

    .line 227
    const/16 v16, 0x0

    .local v16, j:I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 228
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 229
    const-string v31, "LockScreenShortcutSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "savedShortcutName : "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 226
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 235
    .end local v16           #j:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    .line 236
    const-string v30, "LockScreenShortcutSettings"

    const-string v31, "mShortCutList.size() < mNumOfSavedShortcut)"

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 240
    :cond_6
    const v30, 0x7f0a015c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 242
    .local v11, guideTextView:Landroid/widget/TextView;
    const-string v17, ".\n"

    .line 243
    .local v17, linefeed:Ljava/lang/String;
    const-string v30, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 244
    const-string v17, "\n"

    .line 245
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 248
    :cond_7
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const v31, 0x7f0d0ad9

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const v31, 0x7f0d0ada

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, content_string:Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const v30, 0x7f0a0151

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    .line 252
    const v30, 0x7f0a015d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    .line 256
    const/4 v12, 0x0

    .line 257
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_8

    .line 263
    const v30, 0x7f040076

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 265
    .local v24, positionBarLayout:Landroid/view/View;
    const v30, 0x7f0a0157

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 266
    .local v23, positionBar:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    const v30, 0x7f040074

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    .line 271
    .local v27, shorcutIconLayout:Landroid/view/View;
    const v30, 0x7f0a0155

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 272
    .local v28, shortcutIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 286
    .end local v23           #positionBar:Landroid/widget/ImageView;
    .end local v24           #positionBarLayout:Landroid/view/View;
    .end local v27           #shorcutIconLayout:Landroid/view/View;
    .end local v28           #shortcutIcon:Landroid/widget/ImageView;
    :cond_8
    const v30, 0x7f040076

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 288
    .restart local v24       #positionBarLayout:Landroid/view/View;
    const v30, 0x7f0a0157

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 289
    .restart local v23       #positionBar:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    .line 298
    new-instance v29, Landroid/animation/LayoutTransition;

    invoke-direct/range {v29 .. v29}, Landroid/animation/LayoutTransition;-><init>()V

    .line 299
    .local v29, transition:Landroid/animation/LayoutTransition;
    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconChangeAnimator:Landroid/animation/Animator;

    .line 300
    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconChangeAnimator:Landroid/animation/Animator;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 302
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_shortcut"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v2, v4

    .line 308
    .local v2, state:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 309
    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setEnable(Z)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    if-eqz v3, :cond_2

    .line 320
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 321
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 322
    .local v1, rotation:I
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    if-eq v1, v4, :cond_0

    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setOrienationMode(Z)V

    .line 324
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #rotation:I
    :cond_2
    return-void

    .end local v2           #state:Z
    :cond_3
    move v2, v5

    .line 307
    goto :goto_0
.end method
