.class public Lcom/android/launcher2/popup/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/launcher2/popup/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popup/MenuPopupHelper$1;,
        Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;,
        Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x7f030037

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/android/launcher2/popup/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;)V
    .locals 2
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V
    .locals 2
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"
    .parameter "overflowOnly"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    iput-object p2, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    .line 83
    iput-boolean p4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopupMaxWidth:I

    .line 87
    iput-object p3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 89
    invoke-virtual {p2, p0}, Lcom/android/launcher2/popup/MenuBuilder;->addMenuPresenter(Lcom/android/launcher2/popup/MenuPresenter;)V

    .line 90
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/popup/MenuPopupHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/popup/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v8, 0x0

    .line 172
    const/4 v6, 0x0

    .line 173
    .local v6, width:I
    const/4 v4, 0x0

    .line 174
    .local v4, itemView:Landroid/view/View;
    const/4 v3, 0x0

    .line 175
    .local v3, itemType:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 177
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 179
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 180
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 181
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 182
    .local v5, positionType:I
    if-eq v5, v3, :cond_0

    .line 183
    move v3, v5

    .line 184
    const/4 v4, 0x0

    .line 186
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 187
    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 189
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v2, v4, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 190
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 191
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v5           #positionType:I
    :cond_2
    return v6
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 139
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/launcher2/popup/MenuView;
    .locals 2
    .parameter "root"

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;)V
    .locals 0
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 225
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    .line 275
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher2/popup/MenuPresenter$Callback;->onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->close()V

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 147
    iput-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 150
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 200
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    .line 207
    .end local v0           #anchor:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 202
    .restart local v0       #anchor:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    .line 159
    .local v0, adapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
    #getter for: Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;
    invoke-static {v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/popup/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 160
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 305
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z
    .locals 8
    .parameter "subMenu"

    .prologue
    const/4 v5, 0x0

    .line 244
    invoke-virtual {p1}, Lcom/android/launcher2/popup/SubMenuBuilder;->hasVisibleItems()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    new-instance v4, Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-object v6, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v6, p1, v7, v5}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V

    .line 246
    .local v4, subPopup:Lcom/android/launcher2/popup/MenuPopupHelper;
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/popup/MenuPopupHelper;->setCallback(Lcom/android/launcher2/popup/MenuPresenter$Callback;)V

    .line 248
    const/4 v3, 0x0

    .line 249
    .local v3, preserveIconSpacing:Z
    invoke-virtual {p1}, Lcom/android/launcher2/popup/SubMenuBuilder;->size()I

    move-result v1

    .line 250
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 251
    invoke-virtual {p1, v2}, Lcom/android/launcher2/popup/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 252
    .local v0, childItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 253
    const/4 v3, 0x1

    .line 257
    .end local v0           #childItem:Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/launcher2/popup/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 259
    invoke-virtual {v4}, Lcom/android/launcher2/popup/MenuPopupHelper;->tryShow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 260
    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 261
    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/launcher2/popup/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/launcher2/popup/MenuBuilder;)Z

    .line 263
    :cond_1
    const/4 v5, 0x1

    .line 266
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #preserveIconSpacing:Z
    .end local v4           #subPopup:Lcom/android/launcher2/popup/MenuPopupHelper;
    :cond_2
    return v5

    .line 250
    .restart local v0       #childItem:Landroid/view/MenuItem;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #preserveIconSpacing:Z
    .restart local v4       #subPopup:Lcom/android/launcher2/popup/MenuPopupHelper;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 211
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 219
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 220
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 94
    return-void
.end method

.method public setCallback(Lcom/android/launcher2/popup/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    .line 240
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mForceShowIcon:Z

    .line 98
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 109
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 110
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 111
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    new-instance v3, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/launcher2/popup/MenuPopupHelper;Lcom/android/launcher2/popup/MenuBuilder;)V

    iput-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    .line 114
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 118
    .local v1, anchor:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 119
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v0, v2

    .line 120
    .local v0, addGlobalListener:Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 121
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 122
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 123
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 128
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v4}, Lcom/android/launcher2/popup/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 129
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 130
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 131
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 132
    .end local v0           #addGlobalListener:Z
    :goto_0
    return v2

    :cond_2
    move v2, v0

    .line 125
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .parameter "cleared"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 235
    :cond_0
    return-void
.end method
