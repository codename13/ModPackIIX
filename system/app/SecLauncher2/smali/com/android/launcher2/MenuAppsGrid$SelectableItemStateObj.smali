.class abstract Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SelectableItemStateObj"
.end annotation


# static fields
.field private static final CHECKED_APPS:Ljava/lang/String; = "CHECKED_APPS"


# instance fields
.field private mCheckedState:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButton:Landroid/view/View;

.field private mNumSelected:Landroid/widget/TextView;

.field private mSelectedCnt:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>()V

    .line 1231
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method protected abstract complete()V
.end method

.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 9
    .parameter "oldState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1270
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 1273
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1274
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewStub;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    #setter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v6, v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3602(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1275
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v6, 0x0

    #setter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBarStub:Landroid/view/ViewStub;
    invoke-static {v3, v6}, Lcom/android/launcher2/MenuAppsGrid;->access$3702(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 1278
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1279
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v7

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v3, :cond_1

    move v3, v4

    :goto_0
    #calls: Lcom/android/launcher2/MenuAppsGrid;->animateInTitleBar(Landroid/view/View;Z)V
    invoke-static {v6, v7, v3}, Lcom/android/launcher2/MenuAppsGrid;->access$2600(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;Z)V

    .line 1281
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1282
    .local v2, selectedTitleBar:Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 1283
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1284
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lcom/android/launcher2/TitleBarKeyEventListener;

    invoke-direct {v6}, Lcom/android/launcher2/TitleBarKeyEventListener;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1283
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_1
    move v3, v5

    .line 1279
    goto :goto_0

    .line 1290
    .restart local v2       #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1292
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    const v6, 0x7f070068

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    .line 1293
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGrid;->access$3800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e0050

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    const v6, 0x7f07003f

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    .line 1297
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-eqz v6, :cond_4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1304
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;)V

    .line 1318
    .local v0, cancelListener:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f070069

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1320
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f070067

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    .end local v0           #cancelListener:Landroid/view/View$OnClickListener;
    .end local v2           #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_3
    return-void

    .restart local v2       #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_4
    move v4, v5

    .line 1303
    goto :goto_2
.end method

.method public enterItems(Ljava/lang/Iterable;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    const/4 v7, 0x1

    .line 1350
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1353
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/android/launcher2/AppIconView;

    if-ne v3, v4, :cond_0

    move-object v0, v2

    .line 1354
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 1355
    .local v0, aiv:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0, v7}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    .line 1357
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    iget-wide v5, v3, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1358
    invoke-virtual {v0, v7}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    goto :goto_0

    .line 1363
    .end local v0           #aiv:Lcom/android/launcher2/AppIconView;
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x0

    .line 1328
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v2, :cond_0

    .line 1329
    const-string v2, "Launcher.MenuAppsGrid"

    const-string v3, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :goto_0
    return-void

    .line 1333
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mSelectedTitleBar:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/ViewGroup;

    move-result-object v3

    #calls: Lcom/android/launcher2/MenuAppsGrid;->animateOutTitleBar(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;Landroid/view/View;)V

    .line 1335
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1337
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->grandchildren()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1338
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_1

    .line 1339
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .end local v1           #v:Landroid/view/View;
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    goto :goto_1

    .line 1344
    :cond_2
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public exitItems(Ljava/lang/Iterable;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    const/4 v5, 0x0

    .line 1367
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1370
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/android/launcher2/AppIconView;

    if-ne v3, v4, :cond_0

    move-object v0, v2

    .line 1371
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 1372
    .local v0, aiv:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0, v5}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    .line 1373
    invoke-virtual {v0, v5}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    goto :goto_0

    .line 1376
    .end local v0           #aiv:Lcom/android/launcher2/AppIconView;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected getCheckedItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getCheckedChildrenAndFolderChildren(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getCheckedViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getCheckedViewsAndFolderViews(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 8
    .parameter "item"
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1242
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/android/launcher2/AppIconView;

    if-ne v2, v5, :cond_0

    move-object v1, p2

    .line 1243
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1244
    .local v1, chkable:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->toggle()V

    .line 1246
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1247
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1248
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1249
    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1254
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1255
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0050

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f040002

    invoke-static {v2, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1261
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1262
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1265
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v1           #chkable:Lcom/android/launcher2/AppIconView;
    :cond_0
    return v3

    .line 1251
    .restart local v1       #chkable:Lcom/android/launcher2/AppIconView;
    :cond_1
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1252
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1254
    goto :goto_1
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "bundle"

    .prologue
    .line 1402
    if-eqz p1, :cond_0

    .line 1403
    const-string v2, "CHECKED_APPS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 1404
    .local v0, checkedAppIds:[J
    if-eqz v0, :cond_0

    .line 1405
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1406
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1407
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    .end local v0           #checkedAppIds:[J
    .end local v1           #i:I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 1389
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 1392
    .local v0, checkedAppIds:[J
    const/4 v1, 0x0

    .line 1393
    .local v1, counter:I
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1394
    .local v4, id:Ljava/lang/Long;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #counter:I
    .local v2, counter:I
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v1

    move v1, v2

    .end local v2           #counter:I
    .restart local v1       #counter:I
    goto :goto_1

    .line 1397
    .end local v4           #id:Ljava/lang/Long;
    :cond_2
    const-string v5, "CHECKED_APPS"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0
.end method
