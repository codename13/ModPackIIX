.class public Lcom/android/launcher2/HomeEditBar;
.super Landroid/widget/LinearLayout;
.source "HomeEditBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;
.implements Landroid/view/View$OnDragListener;


# static fields
.field private static final BACKGROUND_LEVEL_APP_INFO:I = 0x4

.field private static final BACKGROUND_LEVEL_DELETE:I = 0x1

.field private static final BACKGROUND_LEVEL_NEW_FOLDER:I = 0x2

.field private static final BACKGROUND_LEVEL_NEW_PAGE:I = 0x3

.field private static final BACKGROUND_LEVEL_NORMAL:I = 0x0

.field public static final BOTTOM:I = 0x1

.field private static final IMAGE_LEVEL_DISABLE:I = 0x2

.field private static final IMAGE_LEVEL_HOVER:I = 0x1

.field private static final IMAGE_LEVEL_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HomeEditBar"

.field public static final TOP:I


# instance fields
.field CP_dragFromMenu:Z

.field private app_info_txt:Landroid/widget/TextView;

.field private delete_txt:Landroid/widget/TextView;

.field private mAnimatorRes:I

.field private mAppInfo:Landroid/widget/ImageView;

.field private mAppInfoView:Landroid/widget/LinearLayout;

.field private mBarPosition:I

.field private mDelete:Lcom/android/launcher2/DeleteIcon;

.field private mDeleteView:Landroid/widget/LinearLayout;

.field private mDropped:Z

.field private mEntered:Z

.field private mHideBarAnim:I

.field private mInsideDelete:Z

.field mIsLandscape:Z

.field private mNewFolder:Landroid/widget/ImageView;

.field private mNewFolderView:Landroid/widget/LinearLayout;

.field private mNewPage:Landroid/widget/ImageView;

.field private mNewPageView:Landroid/widget/LinearLayout;

.field private mShowBarAnim:I

.field private mShowPosted:Z

.field private new_folder_txt:Landroid/widget/TextView;

.field private new_page_txt:Landroid/widget/TextView;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 249
    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    .line 264
    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->CP_dragFromMenu:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 249
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    .line 264
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->CP_dragFromMenu:Z

    .line 103
    sget-object v3, Lcom/sec/android/app/launcher/R$styleable;->HomeEditBar:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/HomeEditBar;->mBarPosition:I

    .line 107
    iget v3, p0, Lcom/android/launcher2/HomeEditBar;->mBarPosition:I

    if-nez v3, :cond_1

    .line 108
    const v3, 0x7f05000e

    iput v3, p0, Lcom/android/launcher2/HomeEditBar;->mHideBarAnim:I

    .line 109
    const v3, 0x7f05000f

    iput v3, p0, Lcom/android/launcher2/HomeEditBar;->mShowBarAnim:I

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->res:Landroid/content/res/Resources;

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void

    .line 110
    :cond_1
    iget v3, p0, Lcom/android/launcher2/HomeEditBar;->mBarPosition:I

    if-ne v3, v1, :cond_0

    .line 111
    const/high16 v3, 0x7f05

    iput v3, p0, Lcom/android/launcher2/HomeEditBar;->mHideBarAnim:I

    .line 112
    const v3, 0x7f050001

    iput v3, p0, Lcom/android/launcher2/HomeEditBar;->mShowBarAnim:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 115
    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/launcher2/HomeEditBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeEditBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mAnimatorRes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeEditBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mHideBarAnim:I

    return v0
.end method

.method private appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeEditBar;->getPackageName(Lcom/android/launcher2/BaseItem;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 181
    .local v0, infoOk:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 220
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .end local v0           #infoOk:Z
    :cond_1
    move v0, v4

    .line 180
    goto :goto_0

    .line 183
    .restart local v0       #infoOk:Z
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move v3, v4

    :goto_2
    invoke-direct {p0, v4, v5, v3}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 185
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->app_info_txt:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v3, v4, :cond_0

    .line 186
    if-eqz v0, :cond_3

    .line 187
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->app_info_txt:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->res:Landroid/content/res/Resources;

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 183
    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    .line 189
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->app_info_txt:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->res:Landroid/content/res/Resources;

    const v5, 0x7f080009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 195
    :pswitch_2
    if-eqz v0, :cond_0

    .line 196
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5, v3}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 197
    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->HOVER:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v3}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto :goto_1

    .line 202
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeEditBar;->getPackageName(Lcom/android/launcher2/BaseItem;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v5, "package"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 212
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v3, :cond_5

    .line 213
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3, v4}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 216
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_5
    :pswitch_4
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3, v4}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 217
    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v3}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto/16 :goto_1

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 352
    sget-boolean v6, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v6, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v1, v6, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 354
    .local v1, hf:Lcom/android/launcher2/HomeFragment;
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    const/16 v9, 0x8

    if-ne v6, v9, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 432
    .end local v1           #hf:Lcom/android/launcher2/HomeFragment;
    :goto_0
    return v6

    .line 358
    :cond_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    move v6, v8

    .line 432
    goto :goto_0

    .line 360
    :pswitch_0
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 361
    instance-of v6, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v6, :cond_3

    .line 362
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDelete()V

    .line 371
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v6}, Lcom/android/launcher2/DeleteIcon;->stopTrashCanShakeAnimation()V

    .line 372
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-direct {p0, v7, v6, v7}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 373
    sget-object v6, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v6}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    .line 375
    sget-boolean v6, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v6, :cond_1

    .line 376
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-direct {p0, v7, v6, v7}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 378
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 379
    iput-boolean v7, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 381
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f050011

    invoke-static {v6, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 384
    .local v0, animator:Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 385
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 387
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f050015

    invoke-static {v6, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 390
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 391
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 393
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 396
    .local v4, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 398
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 364
    .end local v0           #animator:Landroid/animation/Animator;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v4           #set:Landroid/animation/AnimatorSet;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v2, v6, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 365
    .local v2, home:Lcom/android/launcher2/HomeFragment;
    if-eqz v2, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 367
    .local v5, ws:Lcom/android/launcher2/Workspace;
    if-eqz v5, :cond_2

    .line 368
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Landroid/view/View;)V

    goto/16 :goto_2

    .line 405
    .end local v2           #home:Lcom/android/launcher2/HomeFragment;
    .end local v5           #ws:Lcom/android/launcher2/Workspace;
    :pswitch_1
    iput-boolean v7, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 406
    iput-boolean v7, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 407
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-direct {p0, v7, v6, v7}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 408
    sget-object v6, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v6}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    .line 409
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v6}, Lcom/android/launcher2/DeleteIcon;->stopTrashCanShakeAnimation()V

    goto/16 :goto_1

    .line 412
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v6, :cond_1

    .line 413
    iput-boolean v7, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 414
    iput-boolean v7, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 415
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-direct {p0, v7, v6, v7}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 416
    sget-object v6, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v6}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    .line 417
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v6}, Lcom/android/launcher2/DeleteIcon;->stopTrashCanShakeAnimation()V

    .line 418
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/DeleteIcon;->setAnimating(Z)V

    goto/16 :goto_1

    .line 422
    :pswitch_3
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 423
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 424
    iput-boolean v7, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 425
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-direct {p0, v8, v6, v8}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 426
    sget-object v6, Lcom/android/launcher2/DragState$VisualMode;->DELETE:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v6}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    .line 427
    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v6}, Lcom/android/launcher2/DeleteIcon;->startTrashCanShakeAnimation()V

    goto/16 :goto_1

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getPackageName(Lcom/android/launcher2/BaseItem;)Ljava/lang/String;
    .locals 5
    .parameter "item"

    .prologue
    .line 445
    const/4 v2, 0x0

    .line 447
    .local v2, pkgName:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_2

    :cond_0
    instance-of v3, p1, Lcom/android/launcher2/HomePendingItem;

    if-nez v3, :cond_2

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_3

    .line 453
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 459
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 460
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 462
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_2
    return-object v2

    .line 455
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local p1
    :cond_3
    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1
    iget-object v1, p1, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 456
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 457
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method private insertWorkspaceScreen(Lcom/android/launcher2/Workspace;I)Lcom/android/launcher2/CellLayout;
    .locals 12
    .parameter "ws"
    .parameter "insertAt"

    .prologue
    const/4 v11, -0x1

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v2, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 136
    .local v2, hf:Lcom/android/launcher2/HomeFragment;
    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030041

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 138
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 140
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_0

    .line 141
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 144
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p1, v0, p2, v5}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 147
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    .line 148
    .local v3, homePageIndex:I
    if-gt p2, v3, :cond_1

    .line 149
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Lcom/android/launcher2/HomeFragment;->setHomeScreenAt(I)V

    .line 151
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->saveScreenInfo()V

    .line 154
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v7, updatedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 157
    .local v6, totalScreens:I
    add-int/lit8 v4, p2, 0x1

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 158
    invoke-virtual {p1, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 159
    .local v1, clc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, v4, v7}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    .end local v1           #clc:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 163
    return-object v0
.end method

.method private newFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 479
    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    instance-of v4, p1, Lcom/android/launcher2/HomePendingItem;

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 484
    .local v0, canCreateFolder:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 522
    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .end local v0           #canCreateFolder:Z
    :cond_2
    move v0, v1

    .line 479
    goto :goto_0

    .line 486
    .restart local v0       #canCreateFolder:Z
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v2, v1

    :goto_2
    invoke-direct {p0, v1, v4, v2}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 488
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->new_folder_txt:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1

    .line 489
    if-eqz v0, :cond_4

    .line 490
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->new_folder_txt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->res:Landroid/content/res/Resources;

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 486
    goto :goto_2

    .line 493
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->new_folder_txt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->res:Landroid/content/res/Resources;

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 500
    :pswitch_2
    if-eqz v0, :cond_5

    .line 501
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem()Z

    move-result v0

    .line 503
    :cond_5
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    goto :goto_1

    .line 509
    :pswitch_3
    if-eqz v0, :cond_1

    .line 510
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 511
    sget-object v1, Lcom/android/launcher2/DragState$VisualMode;->HOVER:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v1}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto :goto_1

    .line 516
    :pswitch_4
    if-eqz v0, :cond_1

    .line 517
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 518
    sget-object v1, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v1}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto :goto_1

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private newPage(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 540
    .local v7, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v2

    .line 542
    .local v2, cpMgr:Lcom/android/launcher2/ContextualPageManager;
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v11

    if-ge v8, v11, :cond_2

    move v0, v9

    .line 544
    .local v0, canCreatePage:Z
    :goto_0
    sget-boolean v8, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v8, :cond_0

    .line 545
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v11

    sub-int/2addr v8, v11

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v11

    if-ge v8, v11, :cond_3

    move v0, v9

    .line 547
    :cond_0
    :goto_1
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 616
    :cond_1
    :goto_2
    :pswitch_0
    return v0

    .end local v0           #canCreatePage:Z
    :cond_2
    move v0, v10

    .line 542
    goto :goto_0

    .restart local v0       #canCreatePage:Z
    :cond_3
    move v0, v10

    .line 545
    goto :goto_1

    .line 549
    :pswitch_1
    iget-object v9, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    move v8, v10

    :goto_3
    invoke-direct {p0, v10, v9, v8}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 551
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->new_page_txt:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v9, 0x258

    if-lt v8, v9, :cond_1

    .line 552
    if-eqz v0, :cond_5

    .line 553
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->new_page_txt:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/launcher2/HomeEditBar;->res:Landroid/content/res/Resources;

    const v10, 0x7f080007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 549
    :cond_4
    const/4 v8, 0x2

    goto :goto_3

    .line 556
    :cond_5
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->new_page_txt:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/launcher2/HomeEditBar;->res:Landroid/content/res/Resources;

    const v10, 0x7f080009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 563
    :pswitch_2
    if-eqz v0, :cond_8

    .line 564
    iget v8, v7, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v8, 0x1

    .line 566
    .local v4, insertAt:I
    sget-boolean v8, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v8, :cond_6

    iget v8, v7, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v2, v8}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v8

    if-eqz v8, :cond_6

    .line 568
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v9

    sub-int v4, v8, v9

    .line 570
    :cond_6
    invoke-direct {p0, v7, v4}, Lcom/android/launcher2/HomeEditBar;->insertWorkspaceScreen(Lcom/android/launcher2/Workspace;I)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .line 571
    .local v5, newPage:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7, v4}, Lcom/android/launcher2/Workspace;->snapToPageAfterLayout(I)V

    .line 572
    invoke-virtual {p2, v5, v10, v10, v4}, Lcom/android/launcher2/DragState;->moveItemToWithoutAnimation(Lcom/android/launcher2/DragReceivable;III)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 573
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 575
    :cond_7
    sget-boolean v8, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v8, :cond_8

    .line 576
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v3, v8, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 577
    .local v3, hf:Lcom/android/launcher2/HomeFragment;
    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v8

    if-lez v8, :cond_8

    .line 578
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 580
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v8

    if-eqz v8, :cond_8

    .line 581
    move v6, v4

    .line 582
    .local v6, pageId:I
    new-instance v8, Lcom/android/launcher2/HomeEditBar$2;

    invoke-direct {v8, p0, v6}, Lcom/android/launcher2/HomeEditBar$2;-><init>(Lcom/android/launcher2/HomeEditBar;I)V

    invoke-virtual {p0, v8}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    .line 597
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v3           #hf:Lcom/android/launcher2/HomeFragment;
    .end local v4           #insertAt:I
    .end local v5           #newPage:Lcom/android/launcher2/CellLayout;
    .end local v6           #pageId:I
    :cond_8
    sget-boolean v8, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v8, :cond_1

    .line 598
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/ImageView;

    invoke-direct {p0, v10, v8, v10}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    goto/16 :goto_2

    .line 603
    :pswitch_3
    if-eqz v0, :cond_1

    .line 604
    const/4 v8, 0x3

    iget-object v10, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v10, v9}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 605
    sget-object v8, Lcom/android/launcher2/DragState$VisualMode;->HOVER:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v8}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto/16 :goto_2

    .line 610
    :pswitch_4
    if-eqz v0, :cond_1

    .line 611
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/ImageView;

    invoke-direct {p0, v10, v8, v10}, Lcom/android/launcher2/HomeEditBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 612
    sget-object v8, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {p2, v8}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto/16 :goto_2

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setDrawableLevel(ILandroid/widget/ImageView;I)V
    .locals 3
    .parameter "backgroundLevel"
    .parameter "child"
    .parameter "childLevel"

    .prologue
    const/4 v2, 0x1

    .line 791
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_0

    .line 792
    if-ne p1, v2, :cond_5

    if-ne p3, v2, :cond_5

    .line 793
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 794
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 795
    const v1, 0x7f020042

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    .line 811
    :cond_0
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 813
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 814
    .local v0, image:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 816
    :cond_1
    return-void

    .line 797
    .end local v0           #image:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v1, 0x7f02000d

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    goto :goto_0

    .line 799
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 800
    const v1, 0x7f02003d

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    goto :goto_0

    .line 802
    :cond_4
    const v1, 0x7f02000e

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    goto :goto_0

    .line 805
    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 806
    const v1, 0x7f020038

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    goto :goto_0

    .line 808
    :cond_6
    const v1, 0x7f02000b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkMarquee(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 7
    .parameter "v"
    .parameter "dragEvent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 707
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 708
    .local v1, tv_NewFolder:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 709
    .local v0, tv_Delete:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 712
    .local v2, tv_NewPage:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 716
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 717
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 718
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 723
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_3

    .line 724
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 725
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_4

    .line 726
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 727
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_0

    .line 728
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method public collectPreWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    if-eqz v3, :cond_0

    .line 227
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mInsideDelete:Z

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050011

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 231
    .local v0, animator:Landroid/animation/Animator;
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 232
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 234
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050015

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 237
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 238
    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 243
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 245
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v0           #animator:Landroid/animation/Animator;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2           #set:Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 269
    iput v7, p0, Lcom/android/launcher2/HomeEditBar;->mAnimatorRes:I

    .line 270
    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v5, :cond_d

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    .line 275
    .local v2, hotSeat:Lcom/android/launcher2/Hotseat;
    const/4 v4, 0x0

    .line 276
    .local v4, mOnlyShowHomeEditBar:Z
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v5, :cond_5

    .line 277
    :cond_0
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v5, :cond_9

    .line 278
    const/4 v4, 0x1

    .line 282
    :cond_1
    :goto_0
    if-eqz p4, :cond_a

    iget-object v5, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v8, :cond_2

    iget-object v5, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v8, :cond_2

    instance-of v5, p4, Lcom/android/launcher2/HomePendingItem;

    if-eqz v5, :cond_a

    :cond_2
    move v1, v6

    .line 285
    .local v1, dragFromMenu:Z
    :goto_1
    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v5, :cond_3

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v3, v5, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 287
    .local v3, mHomeFragment:Lcom/android/launcher2/HomeFragment;
    iput-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->CP_dragFromMenu:Z

    .line 288
    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v5

    if-eqz v5, :cond_3

    .line 289
    const/4 v4, 0x1

    .line 290
    sput-boolean v6, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    .line 294
    .end local v3           #mHomeFragment:Lcom/android/launcher2/HomeFragment;
    :cond_3
    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-eqz v5, :cond_4

    if-eqz v1, :cond_b

    .line 295
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 305
    const v5, 0x7f020038

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    .line 310
    .end local v1           #dragFromMenu:Z
    :cond_5
    :goto_3
    if-nez v4, :cond_6

    if-eqz v2, :cond_6

    if-eqz p4, :cond_7

    iget-object v5, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v7, :cond_6

    iget-object v5, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v7, :cond_6

    instance-of v5, p4, Lcom/android/launcher2/HomePendingItem;

    if-eqz v5, :cond_7

    .line 315
    :cond_6
    iget v5, p0, Lcom/android/launcher2/HomeEditBar;->mShowBarAnim:I

    iput v5, p0, Lcom/android/launcher2/HomeEditBar;->mAnimatorRes:I

    .line 320
    new-instance v5, Lcom/android/launcher2/HomeEditBar$1;

    invoke-direct {v5, p0}, Lcom/android/launcher2/HomeEditBar$1;-><init>(Lcom/android/launcher2/HomeEditBar;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    .line 327
    iput-boolean v6, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    .line 332
    .end local v2           #hotSeat:Lcom/android/launcher2/Hotseat;
    .end local v4           #mOnlyShowHomeEditBar:Z
    :cond_7
    :goto_4
    iget v5, p0, Lcom/android/launcher2/HomeEditBar;->mAnimatorRes:I

    if-eqz v5, :cond_8

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/HomeEditBar;->mAnimatorRes:I

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 334
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 335
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 336
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v0           #animator:Landroid/animation/Animator;
    :cond_8
    return-void

    .line 279
    .restart local v2       #hotSeat:Lcom/android/launcher2/Hotseat;
    .restart local v4       #mOnlyShowHomeEditBar:Z
    :cond_9
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a
    move v1, v7

    .line 282
    goto/16 :goto_1

    .line 299
    .restart local v1       #dragFromMenu:Z
    :cond_b
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 307
    :cond_c
    const v5, 0x7f02000b

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    goto :goto_3

    .line 329
    .end local v1           #dragFromMenu:Z
    .end local v2           #hotSeat:Lcom/android/launcher2/Hotseat;
    .end local v4           #mOnlyShowHomeEditBar:Z
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    if-eqz v5, :cond_7

    .line 330
    :cond_e
    iget v5, p0, Lcom/android/launcher2/HomeEditBar;->mHideBarAnim:I

    iput v5, p0, Lcom/android/launcher2/HomeEditBar;->mAnimatorRes:I

    goto :goto_4
.end method

.method public getBarPosition()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mBarPosition:I

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 626
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 635
    new-instance v0, Lcom/android/launcher2/HomeEditBar$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeEditBar$3;-><init>(Lcom/android/launcher2/HomeEditBar;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    .line 644
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 653
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    const/4 v1, 0x0

    .line 662
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeEditBar;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 663
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 664
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "dragEvent"

    .prologue
    .line 681
    const/4 v3, 0x0

    .line 682
    .local v3, rc:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    .line 683
    .local v2, localState:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/launcher2/DragState;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 684
    check-cast v1, Lcom/android/launcher2/DragState;

    .line 685
    .local v1, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 686
    .local v0, dragItem:Lcom/android/launcher2/BaseItem;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/HomeEditBar;->checkMarquee(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 687
    if-eqz v0, :cond_1

    .line 688
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_2

    .line 689
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    .line 699
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 700
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 703
    .end local v0           #dragItem:Lcom/android/launcher2/BaseItem;
    .end local v1           #dragState:Lcom/android/launcher2/DragState;
    :cond_1
    return v3

    .line 690
    .restart local v0       #dragItem:Lcom/android/launcher2/BaseItem;
    .restart local v1       #dragState:Lcom/android/launcher2/DragState;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_3

    .line 691
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->newFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0

    .line 692
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_4

    .line 693
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->newPage(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0

    .line 694
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_0

    .line 695
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 738
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 740
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->new_folder_txt:Landroid/widget/TextView;

    .line 741
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->new_page_txt:Landroid/widget/TextView;

    .line 742
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->app_info_txt:Landroid/widget/TextView;

    .line 743
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->delete_txt:Landroid/widget/TextView;

    .line 748
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/ImageView;

    .line 749
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    .line 750
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 754
    :cond_0
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DeleteIcon;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    .line 755
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    .line 756
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 760
    :cond_1
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/ImageView;

    .line 761
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    .line 762
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 763
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 764
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher2/NewFolderDrawable;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    :cond_2
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/ImageView;

    .line 768
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    .line 769
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 770
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 771
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher2/NewPageDrawable;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/NewPageDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 773
    :cond_3
    return-void
.end method

.method public relayoutOnRotation()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v9, 0x1

    const/4 v12, -0x1

    const/4 v10, 0x0

    .line 820
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 825
    .local v6, res:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_5

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 829
    .local v4, lp_Editbar:Landroid/widget/FrameLayout$LayoutParams;
    const v8, 0x7f0c0027

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 830
    .local v7, top:I
    const v8, 0x7f0c0024

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 831
    .local v0, barHeight:I
    const v8, 0x7f0c0025

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 832
    .local v2, imgHeight:I
    const v8, 0x7f0c0020

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 834
    .local v1, iconGap:I
    iget-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    if-eqz v8, :cond_6

    .line 835
    invoke-virtual {p0, v9}, Lcom/android/launcher2/HomeEditBar;->setOrientation(I)V

    .line 836
    const v8, 0x7f0c00aa

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 837
    iput v12, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 838
    const/16 v8, 0x15

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 839
    const v8, 0x7f020086

    invoke-virtual {p0, v8}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    .line 848
    :goto_2
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_2

    .line 849
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 850
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 851
    .local v5, lp_icon:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    if-eqz v8, :cond_7

    .line 852
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 853
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 854
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10, v7, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 855
    iput v12, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 856
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 857
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 858
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 867
    :goto_3
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->new_folder_txt:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 868
    iget-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    if-eqz v8, :cond_8

    .line 869
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->new_folder_txt:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #lp_icon:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_4
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3

    .line 877
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 878
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewPage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 879
    .restart local v5       #lp_icon:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    if-eqz v8, :cond_9

    .line 880
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 881
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 882
    iput v12, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 883
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 884
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10, v7, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 885
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 886
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 895
    :goto_5
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->new_page_txt:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 896
    iget-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    if-eqz v8, :cond_a

    .line 897
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->new_page_txt:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #lp_icon:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_6
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    .line 905
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 906
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 907
    .restart local v5       #lp_icon:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    if-eqz v8, :cond_b

    .line 908
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 909
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 910
    iput v12, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 911
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 912
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10, v7, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 913
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 914
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 924
    :goto_7
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->app_info_txt:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 925
    iget-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    if-eqz v8, :cond_c

    .line 926
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->app_info_txt:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #lp_icon:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_8
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 934
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 935
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/DeleteIcon;

    invoke-virtual {v8}, Lcom/android/launcher2/DeleteIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 936
    .restart local v5       #lp_icon:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    if-eqz v8, :cond_d

    .line 937
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 938
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 939
    iput v12, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 940
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 941
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10, v7, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 942
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 943
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 952
    :goto_9
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->delete_txt:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 953
    iget-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mIsLandscape:Z

    if-eqz v8, :cond_e

    .line 954
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->delete_txt:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0           #barHeight:I
    .end local v1           #iconGap:I
    .end local v2           #imgHeight:I
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #lp_Editbar:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #lp_icon:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #top:I
    :cond_5
    move v8, v10

    .line 825
    goto/16 :goto_1

    .line 841
    .restart local v0       #barHeight:I
    .restart local v1       #iconGap:I
    .restart local v2       #imgHeight:I
    .restart local v4       #lp_Editbar:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7       #top:I
    :cond_6
    invoke-virtual {p0, v10}, Lcom/android/launcher2/HomeEditBar;->setOrientation(I)V

    .line 842
    iput v12, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 843
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 844
    const/16 v8, 0x51

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 845
    const v8, 0x7f020081

    invoke-virtual {p0, v8}, Lcom/android/launcher2/HomeEditBar;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 860
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5       #lp_icon:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iput v12, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 861
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 862
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 863
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 864
    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 865
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_3

    .line 871
    :cond_8
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->new_folder_txt:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 888
    :cond_9
    iput v12, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 889
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 890
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 891
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewPageView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 892
    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 893
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_5

    .line 899
    :cond_a
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->new_page_txt:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 917
    :cond_b
    iput v12, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 918
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 919
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 920
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 921
    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 922
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_7

    .line 928
    :cond_c
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->app_info_txt:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 945
    :cond_d
    iput v12, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 946
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 947
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 948
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 949
    iput v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 950
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_9

    .line 956
    :cond_e
    iget-object v8, p0, Lcom/android/launcher2/HomeEditBar;->delete_txt:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
