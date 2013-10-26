.class public Lcom/android/launcher2/popup/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/android/launcher2/popup/MenuBuilder$Callback;
.implements Lcom/android/launcher2/popup/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;,
        Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;

.field private mMenu:Lcom/android/launcher2/popup/MenuBuilder;

.field private mMenuItemClickListener:Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;

.field private mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "anchor"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/launcher2/popup/PopupMenu;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/android/launcher2/popup/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    .line 62
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder;->setCallback(Lcom/android/launcher2/popup/MenuBuilder$Callback;)V

    .line 63
    iput-object p2, p0, Lcom/android/launcher2/popup/PopupMenu;->mAnchor:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-object v1, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->setCallback(Lcom/android/launcher2/popup/MenuPresenter$Callback;)V

    .line 66
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    .line 113
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/launcher2/popup/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .parameter "menuRes"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/launcher2/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    return-void
.end method

.method public onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mDismissListener:Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mDismissListener:Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;

    invoke-interface {v0, p0}, Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;->onDismiss(Lcom/android/launcher2/popup/PopupMenu;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/launcher2/popup/SubMenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 171
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenuItemClickListener:Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenuItemClickListener:Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/launcher2/popup/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 177
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/launcher2/popup/MenuBuilder;)Z
    .locals 4
    .parameter "subMenu"

    .prologue
    const/4 v0, 0x1

    .line 156
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-object v2, p0, Lcom/android/launcher2/popup/PopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher2/popup/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setOnDismissListener(Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/launcher2/popup/PopupMenu;->mDismissListener:Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;

    .line 131
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/launcher2/popup/PopupMenu;->mMenuItemClickListener:Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;

    .line 122
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher2/popup/PopupMenu;->mPopup:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuPopupHelper;->show()V

    .line 105
    return-void
.end method
