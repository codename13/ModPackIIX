.class Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateSearch"
.end annotation


# instance fields
.field private mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 1
    .parameter

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    .line 1138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsSearch;->closeKeyboard()V

    .line 1181
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 3
    .parameter "oldState"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setNormalTitleBarVisibility(I)V

    .line 1148
    new-instance v0, Lcom/android/launcher2/MenuWidgetsSearch;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->getTabHost()Lcom/android/launcher2/MenuTabHost;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuWidgetsSearch;-><init>(Lcom/android/launcher2/MenuTabHost;Lcom/android/launcher2/MenuWidgets;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    .line 1150
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 1151
    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsSearch;->exit()V

    .line 1157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    .line 1159
    :cond_0
    return-void
.end method

.method public getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    return-object v0
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 1
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    #calls: Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1700(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V

    .line 1143
    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 1174
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    .line 1175
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->restore(Landroid/os/Bundle;)V

    .line 1177
    :cond_0
    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 1167
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    .line 1168
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->save(Landroid/os/Bundle;)V

    .line 1170
    :cond_0
    return-void
.end method
