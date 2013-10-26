.class public Lcom/android/launcher2/MenuAppsListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MenuAppsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;
    }
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private setListItemData(Lcom/android/launcher2/AppItem;Landroid/widget/TextView;)V
    .locals 7
    .parameter "item"
    .parameter "listItem"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 82
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 86
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    .line 87
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/FolderItem;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Lcom/android/launcher2/FolderIconView;->createFolderIcon(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    .local v1, itemBitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    aget-object v2, v0, v5

    if-eqz v2, :cond_1

    .line 94
    aget-object v2, v0, v5

    check-cast v2, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/FastBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 101
    return-void

    .line 89
    .end local v0           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v1           #itemBitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .restart local v1       #itemBitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 96
    .restart local v0       #drawables:[Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v2, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v2, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public getChild(II)Lcom/android/launcher2/AppItem;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 49
    .local v0, appItem:Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {v0, p2}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    return-object v1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppsListAdapter;->getChild(II)Lcom/android/launcher2/AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 54
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 60
    if-nez p4, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 65
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppsListAdapter;->getChild(II)Lcom/android/launcher2/AppItem;

    move-result-object v1

    move-object v0, p4

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/MenuAppsListAdapter;->setListItemData(Lcom/android/launcher2/AppItem;Landroid/widget/TextView;)V

    .line 66
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 106
    .local v0, appItem:Lcom/android/launcher2/AppItem;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    .line 107
    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0           #appItem:Lcom/android/launcher2/AppItem;
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v1

    .line 109
    :goto_0
    return v1

    .restart local v0       #appItem:Lcom/android/launcher2/AppItem;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Lcom/android/launcher2/AppItem;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 126
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 72
    if-nez p3, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v1

    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/MenuAppsListAdapter;->setListItemData(Lcom/android/launcher2/AppItem;Landroid/widget/TextView;)V

    .line 78
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 1
    .parameter "aGroupPosition"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;->onGroupCollapsed(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 1
    .parameter "aGroupPosition"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 142
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;->onGroupExpanded(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public setListener(Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;)V
    .locals 0
    .parameter "aListener"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    .line 157
    return-void
.end method

.method setTab(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method
