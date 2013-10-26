.class public Lcom/android/launcher2/MenuEditBottomBar;
.super Landroid/widget/LinearLayout;
.source "MenuEditBottomBar.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuEditBottomBar$5;
    }
.end annotation


# static fields
.field private static final BACKGROUND_LEVEL_APP_INFO:I = 0x4

.field private static final BACKGROUND_LEVEL_DELETE:I = 0x1

.field private static final BACKGROUND_LEVEL_NEW_FOLDER:I = 0x2

.field private static final BACKGROUND_LEVEL_NEW_PAGE:I = 0x3

.field private static final BACKGROUND_LEVEL_NORMAL:I = 0x0

.field private static final IMAGE_LEVEL_DISABLE:I = 0x2

.field private static final IMAGE_LEVEL_HOVER:I = 0x1

.field private static final IMAGE_LEVEL_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MenuEditBottomBar"


# instance fields
.field private app_info_txt:Landroid/widget/TextView;

.field private delete_txt:Landroid/widget/TextView;

.field private mAppInfo:Landroid/widget/ImageView;

.field private mAppInfoView:Landroid/widget/LinearLayout;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDelete:Landroid/widget/ImageView;

.field private mDeleteView:Landroid/widget/LinearLayout;

.field private mHideAnimator:Landroid/animation/Animator;

.field private mNewFolder:Landroid/widget/ImageView;

.field private mNewFolderView:Landroid/widget/LinearLayout;

.field private mNewPage:Landroid/widget/ImageView;

.field private mNewPageAllowed:Z

.field private mNewPageView:Landroid/widget/LinearLayout;

.field private mPagedView:Lcom/android/launcher2/PagedView;

.field private mShowAnimator:Landroid/animation/Animator;

.field private new_folder_txt:Landroid/widget/TextView;

.field private new_page_txt:Landroid/widget/TextView;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuEditBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuEditBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->setAnimator()V

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->res:Landroid/content/res/Resources;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuEditBottomBar;)Lcom/android/launcher2/PagedView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mPagedView:Lcom/android/launcher2/PagedView;

    return-object v0
.end method

.method private appInfo(Lcom/android/launcher2/BaseItem;Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "item"
    .parameter "dragEvent"

    .prologue
    const/16 v9, 0x258

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 396
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBottomBar;->getPackageName(Lcom/android/launcher2/BaseItem;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    move v1, v5

    .line 397
    .local v1, infoOk:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 398
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 439
    :cond_0
    :goto_1
    :pswitch_0
    return v1

    .end local v0           #dragState:Lcom/android/launcher2/DragState;
    .end local v1           #infoOk:Z
    :cond_1
    move v1, v6

    .line 396
    goto :goto_0

    .line 400
    .restart local v0       #dragState:Lcom/android/launcher2/DragState;
    .restart local v1       #infoOk:Z
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfo:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move v4, v6

    :goto_2
    invoke-direct {p0, v6, v5, v4}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    goto :goto_2

    .line 405
    :pswitch_2
    if-eqz v1, :cond_0

    .line 406
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfoView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v4, v9, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_4

    .line 408
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfoView:Landroid/widget/LinearLayout;

    const v6, 0x7f0200a6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 410
    :cond_4
    const/4 v4, 0x4

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfo:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v6, v5}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 411
    sget-object v4, Lcom/android/launcher2/DragState$VisualMode;->HOVER:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto :goto_1

    .line 416
    :pswitch_3
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBottomBar;->getPackageName(Lcom/android/launcher2/BaseItem;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, pkgName:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 418
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v7, "package"

    const/4 v8, 0x0

    invoke-static {v7, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 420
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 427
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pkgName:Ljava/lang/String;
    :cond_5
    :pswitch_4
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 431
    :pswitch_5
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfoView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v4, v9, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_7

    .line 433
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 435
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfo:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v4, v6}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 436
    sget-object v4, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto/16 :goto_1

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "item"
    .parameter "dragEvent"

    .prologue
    const/16 v6, 0x258

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v4, :cond_2

    :cond_0
    move v0, v3

    .line 157
    .local v0, deleteOk:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    .line 158
    .local v1, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 203
    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .end local v0           #deleteOk:Z
    .end local v1           #dragState:Lcom/android/launcher2/DragState;
    :cond_2
    move v0, v2

    .line 155
    goto :goto_0

    .line 160
    .restart local v0       #deleteOk:Z
    .restart local v1       #dragState:Lcom/android/launcher2/DragState;
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDelete:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v3, v2

    :goto_2
    invoke-direct {p0, v2, v4, v3}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 163
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->delete_txt:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-lt v2, v6, :cond_1

    .line 164
    if-eqz v0, :cond_4

    .line 165
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->delete_txt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->res:Landroid/content/res/Resources;

    const v4, 0x7f080007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 160
    :cond_3
    const/4 v3, 0x2

    goto :goto_2

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->delete_txt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->res:Landroid/content/res/Resources;

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 175
    :pswitch_2
    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuEditBottomBar;->showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V

    goto :goto_1

    .line 180
    :pswitch_3
    if-eqz v0, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDeleteView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v2, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_6

    .line 183
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDeleteView:Landroid/widget/LinearLayout;

    const v4, 0x7f0200a1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 185
    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDelete:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2, v3}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 186
    sget-object v2, Lcom/android/launcher2/DragState$VisualMode;->DELETE:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto :goto_1

    .line 191
    :pswitch_4
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 195
    :pswitch_5
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDeleteView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v4, v6, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v3, :cond_8

    .line 197
    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDeleteView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 199
    :cond_8
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDelete:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3, v2}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 200
    sget-object v2, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto/16 :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static getPackageName(Lcom/android/launcher2/BaseItem;)Ljava/lang/String;
    .locals 5
    .parameter "item"

    .prologue
    .line 636
    const/4 v2, 0x0

    .line 638
    .local v2, pkgName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_1

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_2

    .line 641
    check-cast p0, Lcom/android/launcher2/AppItem;

    .end local p0
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 646
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 648
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_1
    return-object v2

    .line 643
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local p0
    :cond_2
    check-cast p0, Lcom/android/launcher2/HomeShortcutItem;

    .end local p0
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 644
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mCurrentAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mHideAnimator:Landroid/animation/Animator;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 215
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mHideAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mCurrentAnimator:Landroid/animation/Animator;

    .line 217
    :cond_2
    return-void
.end method

.method private newFolder(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z
    .locals 11
    .parameter "item"
    .parameter "dragEvent"

    .prologue
    const/4 v4, 0x2

    const/16 v10, 0x258

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 232
    iget-object v7, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v8, :cond_1

    move v1, v5

    .line 233
    .local v1, folderOk:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 234
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 311
    :cond_0
    :goto_1
    :pswitch_0
    return v1

    .end local v0           #dragState:Lcom/android/launcher2/DragState;
    .end local v1           #folderOk:Z
    :cond_1
    move v1, v6

    .line 232
    goto :goto_0

    .line 236
    .restart local v0       #dragState:Lcom/android/launcher2/DragState;
    .restart local v1       #folderOk:Z
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move v4, v6

    :cond_2
    invoke-direct {p0, v6, v5, v4}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 239
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->new_folder_txt:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-lt v4, v10, :cond_0

    .line 240
    if-eqz v1, :cond_3

    .line 242
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->new_folder_txt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher2/MenuEditBottomBar;->res:Landroid/content/res/Resources;

    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 245
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->new_folder_txt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher2/MenuEditBottomBar;->res:Landroid/content/res/Resources;

    const v6, 0x7f080009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 251
    :pswitch_2
    if-eqz v1, :cond_0

    .line 252
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v3

    .line 253
    .local v3, newFolder:Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v2

    .line 254
    .local v2, menuFragment:Lcom/android/launcher2/MenuFragment;
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v4, v5, :cond_4

    .line 256
    iget v4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v4, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 257
    iget v4, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iput v4, v3, Lcom/android/launcher2/AppItem;->mCell:I

    .line 265
    :goto_2
    iput v6, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 266
    iput v9, p1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 267
    invoke-virtual {v3, p1}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 268
    new-instance v4, Lcom/android/launcher2/MenuEditBottomBar$3;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/android/launcher2/MenuEditBottomBar$3;-><init>(Lcom/android/launcher2/MenuEditBottomBar;Lcom/android/launcher2/MenuFragment;Lcom/android/launcher2/AppFolderItem;Lcom/android/launcher2/DragState;)V

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 262
    :cond_4
    iput v9, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 263
    iput v9, v3, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_2

    .line 288
    .end local v2           #menuFragment:Lcom/android/launcher2/MenuFragment;
    .end local v3           #newFolder:Lcom/android/launcher2/AppFolderItem;
    :pswitch_3
    if-eqz v1, :cond_0

    .line 289
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolderView:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v6, v10, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v5, :cond_6

    .line 291
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolderView:Landroid/widget/LinearLayout;

    const v7, 0x7f0200a6

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 293
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v6, v5}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 294
    sget-object v4, Lcom/android/launcher2/DragState$VisualMode;->HOVER:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto/16 :goto_1

    .line 299
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/DragState;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 303
    :pswitch_5
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolderView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v4, v10, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_8

    .line 305
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 307
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v4, v6}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 308
    sget-object v4, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto/16 :goto_1

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private newPage(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "item"
    .parameter "dragEvent"

    .prologue
    const/16 v4, 0x258

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 327
    iget-boolean v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageAllowed:Z

    if-eqz v3, :cond_0

    .line 328
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 329
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 379
    .end local v0           #dragState:Lcom/android/launcher2/DragState;
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageAllowed:Z

    return v3

    .line 331
    .restart local v0       #dragState:Lcom/android/launcher2/DragState;
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 332
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 333
    .local v2, newScreenPos:I
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, p1, v2}, Lcom/android/launcher2/MenuAppModel;->editInsertItemOnNewScreen(Lcom/android/launcher2/AppItem;I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v1

    .line 335
    .local v1, menuFragment:Lcom/android/launcher2/MenuFragment;
    new-instance v3, Lcom/android/launcher2/MenuEditBottomBar$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/launcher2/MenuEditBottomBar$4;-><init>(Lcom/android/launcher2/MenuEditBottomBar;Lcom/android/launcher2/MenuFragment;I)V

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e005a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 357
    .end local v1           #menuFragment:Lcom/android/launcher2/MenuFragment;
    .end local v2           #newScreenPos:I
    :pswitch_1
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v5, :cond_2

    .line 359
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageView:Landroid/widget/LinearLayout;

    const v4, 0x7f0200a6

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 361
    :cond_2
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 362
    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->HOVER:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto :goto_0

    .line 366
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 370
    :pswitch_3
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v5, :cond_4

    .line 372
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 374
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v3, v6}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 375
    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    goto/16 :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setDrawableLevel(ILandroid/widget/ImageView;I)V
    .locals 1
    .parameter "backgroundLevel"
    .parameter "child"
    .parameter "childLevel"

    .prologue
    .line 556
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 558
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 559
    .local v0, image:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 565
    :cond_1
    return-void
.end method

.method private showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 613
    sget-object v0, Lcom/android/launcher2/MenuEditBottomBar$5;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 624
    .end local p1
    :goto_0
    return-void

    .line 615
    .restart local p1
    :pswitch_0
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 620
    :pswitch_1
    check-cast p1, Lcom/android/launcher2/AppFolderItem;

    .end local p1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->setAnimator()V

    .line 83
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "dragEvent"

    .prologue
    .line 457
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/DragState;

    if-nez v6, :cond_1

    const/4 v5, 0x0

    .line 495
    :cond_0
    :goto_0
    return v5

    .line 458
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    .line 460
    .local v1, dragState:Lcom/android/launcher2/DragState;
    const/4 v5, 0x0

    .line 461
    .local v5, rc:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v4

    .line 462
    .local v4, localState:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 463
    .local v3, item:Lcom/android/launcher2/AppItem;
    instance-of v6, v4, Lcom/android/launcher2/DragState;

    if-eqz v6, :cond_2

    .line 464
    check-cast v4, Lcom/android/launcher2/DragState;

    .end local v4           #localState:Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 465
    .local v0, dragItem:Lcom/android/launcher2/BaseItem;
    instance-of v6, v0, Lcom/android/launcher2/AppItem;

    if-eqz v6, :cond_2

    move-object v3, v0

    .line 466
    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 468
    .end local v0           #dragItem:Lcom/android/launcher2/BaseItem;
    :cond_2
    if-eqz v3, :cond_4

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v7, 0x258

    if-lt v6, v7, :cond_8

    .line 470
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDeleteView:Landroid/widget/LinearLayout;

    if-ne p1, v6, :cond_5

    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/MenuEditBottomBar;->delete(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z

    move-result v5

    .line 483
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 484
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/DragState;

    invoke-virtual {v6}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 485
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBottomBar;->hide()V

    .line 489
    :cond_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 490
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 491
    .local v2, folder:Lcom/android/launcher2/Folder;
    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    goto :goto_0

    .line 471
    .end local v2           #folder:Lcom/android/launcher2/Folder;
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolderView:Landroid/widget/LinearLayout;

    if-ne p1, v6, :cond_6

    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/MenuEditBottomBar;->newFolder(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z

    move-result v5

    goto :goto_1

    .line 472
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageView:Landroid/widget/LinearLayout;

    if-ne p1, v6, :cond_7

    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/MenuEditBottomBar;->newPage(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z

    move-result v5

    goto :goto_1

    .line 473
    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfoView:Landroid/widget/LinearLayout;

    if-ne p1, v6, :cond_3

    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/MenuEditBottomBar;->appInfo(Lcom/android/launcher2/BaseItem;Landroid/view/DragEvent;)Z

    move-result v5

    goto :goto_1

    .line 475
    :cond_8
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDelete:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_9

    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/MenuEditBottomBar;->delete(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z

    move-result v5

    goto :goto_1

    .line 476
    :cond_9
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_a

    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/MenuEditBottomBar;->newFolder(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z

    move-result v5

    goto :goto_1

    .line 477
    :cond_a
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_b

    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/MenuEditBottomBar;->newPage(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z

    move-result v5

    goto :goto_1

    .line 478
    :cond_b
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfo:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_3

    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/MenuEditBottomBar;->appInfo(Lcom/android/launcher2/BaseItem;Landroid/view/DragEvent;)Z

    move-result v5

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 503
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 504
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 505
    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->new_folder_txt:Landroid/widget/TextView;

    .line 506
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->new_page_txt:Landroid/widget/TextView;

    .line 507
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->delete_txt:Landroid/widget/TextView;

    .line 509
    :cond_0
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDelete:Landroid/widget/ImageView;

    .line 510
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDeleteView:Landroid/widget/LinearLayout;

    .line 511
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDeleteView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 512
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDeleteView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 517
    :cond_1
    :goto_0
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    .line 518
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolderView:Landroid/widget/LinearLayout;

    .line 519
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolderView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 520
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 521
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher2/NewFolderDrawable;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    :cond_2
    :goto_1
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    .line 528
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageView:Landroid/widget/LinearLayout;

    .line 529
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 530
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 531
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher2/NewPageDrawable;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/NewPageDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    :cond_3
    :goto_2
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfo:Landroid/widget/ImageView;

    .line 538
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfoView:Landroid/widget/LinearLayout;

    .line 539
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfoView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 540
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 544
    :cond_4
    :goto_3
    return-void

    .line 513
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDelete:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_0

    .line 522
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 524
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher2/NewFolderDrawable;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 532
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 534
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher2/NewPageDrawable;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/NewPageDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 541
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfo:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 542
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBottomBar;->mAppInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_3
.end method

.method setAnimator()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x12c

    .line 94
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    .line 95
    .local v1, isScreenLarge:Z
    if-eqz v1, :cond_1

    const v0, 0x7f05000e

    .line 96
    .local v0, hideAnim:I
    :goto_0
    if-eqz v1, :cond_2

    const v2, 0x7f05000f

    .line 98
    .local v2, showAnim:I
    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x168

    if-gt v3, v4, :cond_0

    .line 100
    const v0, 0x7f05000e

    .line 101
    const v2, 0x7f05000f

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mHideAnimator:Landroid/animation/Animator;

    .line 105
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 106
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 107
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mHideAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBottomBar$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBottomBar$1;-><init>(Lcom/android/launcher2/MenuEditBottomBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mShowAnimator:Landroid/animation/Animator;

    .line 127
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mShowAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBottomBar$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBottomBar$2;-><init>(Lcom/android/launcher2/MenuEditBottomBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 139
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 140
    return-void

    .line 95
    .end local v0           #hideAnim:I
    .end local v2           #showAnim:I
    :cond_1
    const/high16 v0, 0x7f05

    goto :goto_0

    .line 96
    .restart local v0       #hideAnim:I
    :cond_2
    const v2, 0x7f050001

    goto :goto_1
.end method

.method public show(ZZZZLcom/android/launcher2/PagedView;)V
    .locals 5
    .parameter "newFolderAllowed"
    .parameter "isSystemApp"
    .parameter "newPageAllowed"
    .parameter "isFolder"
    .parameter "pagedView"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 573
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBottomBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDelete:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 578
    :cond_1
    iput-object p5, p0, Lcom/android/launcher2/MenuEditBottomBar;->mPagedView:Lcom/android/launcher2/PagedView;

    .line 579
    iput-boolean p3, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPageAllowed:Z

    .line 583
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    .line 584
    .local v0, isScreenLarge:Z
    if-nez v0, :cond_2

    if-eqz p5, :cond_2

    .line 585
    const/4 v1, 0x1

    invoke-virtual {p5, v1}, Lcom/android/launcher2/PagedView;->hidePageIndicator(Z)V

    .line 586
    invoke-virtual {p5}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 589
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mDelete:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v4, v1}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 591
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->delete_txt:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 592
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->delete_txt:Landroid/widget/TextView;

    if-eqz p4, :cond_7

    const v1, 0x7f0e0005

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 595
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewFolder:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    move v1, v3

    :goto_2
    invoke-direct {p0, v3, v4, v1}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 598
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mNewPage:Landroid/widget/ImageView;

    if-eqz p3, :cond_4

    move v2, v3

    :cond_4
    invoke-direct {p0, v3, v1, v2}, Lcom/android/launcher2/MenuEditBottomBar;->setDrawableLevel(ILandroid/widget/ImageView;I)V

    .line 601
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuEditBottomBar;->setVisibility(I)V

    .line 602
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 603
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mShowAnimator:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBottomBar;->mCurrentAnimator:Landroid/animation/Animator;

    .line 605
    .end local v0           #isScreenLarge:Z
    :cond_5
    return-void

    .restart local v0       #isScreenLarge:Z
    :cond_6
    move v1, v3

    .line 589
    goto :goto_0

    .line 592
    :cond_7
    const v1, 0x7f0e003e

    goto :goto_1

    :cond_8
    move v1, v2

    .line 595
    goto :goto_2
.end method
