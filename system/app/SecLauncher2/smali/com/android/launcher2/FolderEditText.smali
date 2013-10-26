.class public Lcom/android/launcher2/FolderEditText;
.super Landroid/widget/EditText;
.source "FolderEditText.java"


# instance fields
.field private mFolder:Lcom/android/launcher2/Folder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 56
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    :goto_0
    :pswitch_1
    return v0

    .line 49
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/FolderEditText;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/launcher2/FolderEditText;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher2/FolderEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, parent:Landroid/view/ViewParent;
    move-object v3, v2

    .line 73
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, focusedChild:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 80
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 83
    .local v1, p:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 88
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 89
    return-object v1

    .line 86
    :cond_0
    invoke-interface {v2, v4, v4}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public setFolder(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/launcher2/FolderEditText;->mFolder:Lcom/android/launcher2/Folder;

    .line 32
    return-void
.end method
