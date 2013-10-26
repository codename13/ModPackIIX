.class public Lcom/android/launcher2/CellLayoutMenu;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutMenu.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutMenu"


# instance fields
.field private mIsSnaking:Z

.field private mSnakedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mIsSnaking:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mSnakedView:Landroid/view/View;

    .line 32
    return-void
.end method

.method private addInScreen(Landroid/view/View;II)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->findFirstEmptySpace()V

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 228
    .local v2, screen:I
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayoutMenu;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 229
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutMenu;->onMove(Landroid/view/View;II)V

    .line 230
    return-void
.end method

.method private fillFromPageRightSnake()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->findFirstEmptySpace()V

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 177
    .local v3, screen:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    .line 178
    .local v2, p:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    .line 180
    .local v1, layoutChildren:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2, v6, v6}, Lcom/android/launcher2/CellLayoutMenu;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, child:Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 182
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMenu;->findFirstEmptySpace()V

    .line 183
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 184
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mIsSnaking:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/launcher2/CellLayoutMenu;->addInScreen(Landroid/view/View;II)V

    .line 186
    invoke-direct {v2}, Lcom/android/launcher2/CellLayoutMenu;->fillFromPageRightSnake()V

    .line 187
    iput-object v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mSnakedView:Landroid/view/View;

    .line 188
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMenu;->getPageChildCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 198
    .end local v0           #child:Landroid/view/View;
    .end local v1           #layoutChildren:Lcom/android/launcher2/CellLayoutChildren;
    .end local v2           #p:Lcom/android/launcher2/CellLayoutMenu;
    .end local v3           #screen:I
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #layoutChildren:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v2       #p:Lcom/android/launcher2/CellLayoutMenu;
    .restart local v3       #screen:I
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMenu;->invalidate()V

    goto :goto_0
.end method

.method private getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 262
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Lcom/android/launcher2/MenuAppsGrid;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    .line 265
    :goto_0
    return-object v1

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 255
    const-wide/16 v0, -0x66

    return-wide v0
.end method

.method getScreenForXY([I)I
    .locals 1
    .parameter "xy"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getScreen()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->onAttachedToWindow()V

    .line 38
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v8, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/DragState;

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    .line 132
    :goto_0
    return v5

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    .line 61
    .local v1, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v5, v8, :cond_3

    move v2, v6

    .line 64
    .local v2, isCustomGrid:Z
    :goto_1
    if-nez v2, :cond_7

    .line 65
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    move v5, v6

    .line 110
    goto :goto_0

    .end local v2           #isCustomGrid:Z
    :cond_3
    move v2, v7

    .line 61
    goto :goto_1

    .line 67
    .restart local v2       #isCustomGrid:Z
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->findFirstEmptySpace()V

    goto :goto_2

    .line 71
    :pswitch_2
    iget-object v5, v1, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v5, p0, :cond_4

    .line 72
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    .line 73
    .local v3, item:Lcom/android/launcher2/BaseItem;
    instance-of v5, v3, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_4

    move-object v0, v3

    .line 74
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 75
    .local v0, appItem:Lcom/android/launcher2/AppItem;
    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_4

    .line 76
    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 77
    iput v9, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 78
    iput v9, v0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v4

    .line 80
    .local v4, menuFragment:Lcom/android/launcher2/MenuFragment;
    if-eqz v4, :cond_2

    .line 81
    new-instance v5, Lcom/android/launcher2/CellLayoutMenu$1;

    invoke-direct {v5, p0, v4}, Lcom/android/launcher2/CellLayoutMenu$1;-><init>(Lcom/android/launcher2/CellLayoutMenu;Lcom/android/launcher2/MenuFragment;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 95
    .end local v0           #appItem:Lcom/android/launcher2/AppItem;
    .end local v3           #item:Lcom/android/launcher2/BaseItem;
    .end local v4           #menuFragment:Lcom/android/launcher2/MenuFragment;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0086

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 100
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v5, v7, :cond_5

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 103
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    .line 104
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->foundValidDrop()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 107
    :cond_6
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    goto :goto_2

    .line 113
    :cond_7
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 132
    :goto_3
    :pswitch_4
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 115
    :pswitch_5
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->findFirstEmptySpace()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutMenu;->findDropLocation(Landroid/view/DragEvent;)V

    move v5, v6

    .line 118
    goto/16 :goto_0

    .line 120
    :pswitch_6
    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Landroid/view/View;

    goto :goto_3

    .line 123
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 124
    iput-boolean v7, p0, Lcom/android/launcher2/CellLayoutMenu;->mIsSnaking:Z

    goto :goto_3

    .line 129
    :pswitch_8
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    goto :goto_3

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 113
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getBackgroundAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->setCrosshairsVisibility(F)V

    .line 139
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 3
    .parameter "event"
    .parameter "fiv"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragState;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuFragment$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 48
    .local v0, isCustomGrid:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    goto :goto_0

    .line 46
    .end local v0           #isCustomGrid:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    instance-of v1, p1, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuFragment$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuFragment$ViewType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 247
    .local v0, isAlphaGrid:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->fillFromPageRightSnake()V

    .line 250
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 245
    .end local v0           #isAlphaGrid:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected snake()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->snake(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method snake(Landroid/view/View;)V
    .locals 6
    .parameter "pushIn"

    .prologue
    const/4 v5, 0x0

    .line 151
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/CellLayoutMenu;->mIsSnaking:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/CellLayoutMenu;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, moveOut:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->removeView(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->findFirstEmptySpace()V

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 158
    .local v2, screen:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    .line 159
    .local v1, p:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutMenu;->snake(Landroid/view/View;)V

    .line 162
    .end local v0           #moveOut:Landroid/view/View;
    .end local v1           #p:Lcom/android/launcher2/CellLayoutMenu;
    .end local v2           #screen:I
    :cond_0
    if-eqz p1, :cond_1

    .line 163
    invoke-direct {p0, p1, v5, v5}, Lcom/android/launcher2/CellLayoutMenu;->addInScreen(Landroid/view/View;II)V

    .line 164
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutMenu;->mSnakedView:Landroid/view/View;

    .line 166
    :cond_1
    return-void
.end method

.method undoSnake(Z)Landroid/view/View;
    .locals 7
    .parameter "first"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 201
    iget-boolean v5, p0, Lcom/android/launcher2/CellLayoutMenu;->mIsSnaking:Z

    if-nez v5, :cond_1

    move-object v1, v4

    .line 221
    :cond_0
    :goto_0
    return-object v1

    .line 202
    :cond_1
    iput-boolean v6, p0, Lcom/android/launcher2/CellLayoutMenu;->mIsSnaking:Z

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, moveOut:Landroid/view/View;
    if-nez p1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutMenu;->mSnakedView:Landroid/view/View;

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutMenu;->removeView(Landroid/view/View;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 209
    iput-object v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mSnakedView:Landroid/view/View;

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 213
    .local v3, screen:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    .line 214
    .local v2, p:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, fromRight:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/launcher2/CellLayoutMenu;->addInScreen(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public updateAllItemsToScreen(I)V
    .locals 3
    .parameter "screen"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getPageChildCount()I

    move-result v1

    .line 275
    .local v1, numChildren:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iput p1, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method updateItem(Landroid/view/View;III)V
    .locals 1
    .parameter "view"
    .parameter "screen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/CellLayoutNoGap;->updateItem(Landroid/view/View;III)V

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 239
    .local v0, item:Lcom/android/launcher2/AppItem;
    iput p2, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 240
    return-void
.end method
