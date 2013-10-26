.class public Lcom/android/settings/dormantmode/DormantModeCustomListDel;
.super Landroid/app/ListFragment;
.source "DormantModeCustomListDel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mSelectAllCheck:Landroid/widget/CheckBox;

.field private static mlistView:Landroid/widget/ListView;

.field private static selected_id:I


# instance fields
.field builder:Landroid/net/Uri$Builder;

.field private mButtonSellectAll:Landroid/view/View;

.field private mCustomListDel:Landroid/view/View;

.field private mEmptyScreen:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 57
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dormant"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "custom_list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->builder:Landroid/net/Uri$Builder;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 182
    sget-object v2, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 183
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 184
    sget-object v2, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 185
    sget-object v2, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 183
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 188
    return-void
.end method

.method public static checkDeleteButtonstate()V
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 278
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f020096

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 283
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f020097

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/android/settings/dormantmode/DormantModeCustomListDel;
    .locals 3
    .parameter "index"

    .prologue
    .line 61
    new-instance v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;

    invoke-direct {v1}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;-><init>()V

    .line 63
    .local v1, f:Lcom/android/settings/dormantmode/DormantModeCustomListDel;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "selected_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method


# virtual methods
.method public customlistdelete()V
    .locals 9

    .prologue
    .line 293
    sget-object v7, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 295
    .local v5, selectedItem:[J
    array-length v7, v5

    if-eqz v7, :cond_1

    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, i:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 300
    .local v6, selection:Ljava/lang/StringBuffer;
    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 303
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aget-wide v7, v5, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 305
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 308
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 310
    :cond_0
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v4, mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "dormant"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "custom_list"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 317
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "sec_custom_dormant_contact"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 318
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 319
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 335
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #selection:Ljava/lang/StringBuffer;
    :cond_1
    return-void

    .line 324
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v2       #i:I
    .restart local v4       #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6       #selection:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 326
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 327
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 329
    .local v1, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1

    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #e:Landroid/content/OperationApplicationException;
    .end local v2           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #i:I
    :cond_2
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    .line 97
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mEmptyScreen:Landroid/view/View;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mCustomListDel:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mButtonSellectAll:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Landroid/widget/CheckBox;

    .line 106
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400d2

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v4, v6

    new-array v5, v8, [I

    const v7, 0x1020014

    aput v7, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    .line 113
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 114
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 115
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 118
    invoke-virtual {p0, v8}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->setHasOptionsMenu(Z)V

    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 177
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 178
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->ToggleAllCheck(Z)V

    .line 179
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 272
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->selected_id:I

    .line 75
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 142
    .local v2, baseUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v6, "display_name COLLATE LOCALIZED ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f0d0111

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 192
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 195
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-interface {p1, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 197
    const v1, 0x7f0d06f2

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 198
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    .line 199
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    .line 212
    :goto_0
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 214
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 203
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v1, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 205
    const v1, 0x7f110001

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 206
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    .line 207
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const v2, 0x7f0d06f2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 208
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    .line 209
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 80
    const v0, 0x7f040059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 125
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 127
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 128
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 149
    sget v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->selected_id:I

    if-eq v0, v4, :cond_1

    .line 150
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    sget v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->selected_id:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 151
    sput v4, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->selected_id:I

    .line 152
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 153
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    :cond_0
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 156
    :cond_1
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 157
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 159
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 162
    :cond_2
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mButtonSellectAll:Landroid/view/View;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mButtonSellectAll:Landroid/view/View;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 173
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 263
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 251
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->customlistdelete()V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 259
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f0a039b -> :sswitch_1
        0x7f0a039c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 87
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 88
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f020097

    const v5, 0x7f020096

    const v4, 0x7f020094

    const/4 v3, 0x0

    .line 218
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 222
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 225
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 226
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 228
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 229
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 232
    :cond_2
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 236
    :cond_3
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 237
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 240
    :cond_4
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method
