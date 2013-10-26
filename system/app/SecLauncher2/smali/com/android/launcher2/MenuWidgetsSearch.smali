.class Lcom/android/launcher2/MenuWidgetsSearch;
.super Ljava/lang/Object;
.source "MenuWidgetsSearch.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;
    }
.end annotation


# static fields
.field private static final MENU_WIDGET_KEYBOARD_IS_UP:Ljava/lang/String; = "MENU_WIDGET_KEYBOARD_IS_UP"

.field private static final MENU_WIDGET_SEARCH_PATTERN:Ljava/lang/String; = "MENU_WIDGET_SEARCH_PATTERN"


# instance fields
.field private mMenuSelBackDown:Landroid/view/View;

.field private mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

.field private mNormalTitleBar:Landroid/view/ViewGroup;

.field private mSearchEdit:Landroid/widget/SearchView;

.field private mSearchTitleBar:Landroid/view/ViewGroup;

.field private mSkippedFirst:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuTabHost;Lcom/android/launcher2/MenuWidgets;)V
    .locals 3
    .parameter "tabHost"
    .parameter "menuWidgets"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    .line 26
    iput-object p2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    .line 27
    const v1, 0x7f070058

    invoke-virtual {p1, v1}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 28
    const v1, 0x7f07005f

    invoke-virtual {p1, v1}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchTitleBar:Landroid/view/ViewGroup;

    .line 29
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchTitleBar:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 30
    const v1, 0x7f07005e

    invoke-virtual {p1, v1}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 31
    .local v0, vb:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchTitleBar:Landroid/view/ViewGroup;

    .line 33
    .end local v0           #vb:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f07006b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    .line 35
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 36
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 39
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuWidgetsSearch;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    return-object v0
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 167
    :cond_0
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 3
    .parameter "oldState"

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 65
    iput-boolean v2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    .line 66
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    new-instance v1, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;-><init>(Lcom/android/launcher2/MenuWidgetsSearch;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 74
    :cond_1
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq p1, v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 77
    :cond_2
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchTitleBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;

    invoke-direct {v1}, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 101
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    .line 84
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 56
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->onWindowFocusChanged(Z)V

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 146
    :cond_2
    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsSearch;->closeKeyboard()V

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 161
    :cond_0
    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, 0x1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const-string v1, "MENU_WIDGET_SEARCH_PATTERN"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 114
    const-string v0, "MENU_WIDGET_KEYBOARD_IS_UP"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 107
    const-string v0, "MENU_WIDGET_SEARCH_PATTERN"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "MENU_WIDGET_KEYBOARD_IS_UP"

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method
