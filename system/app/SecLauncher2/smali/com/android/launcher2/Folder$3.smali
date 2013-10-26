.class Lcom/android/launcher2/Folder$3;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher2/FolderEditText;->setSelection(II)V

    .line 265
    iget-object v0, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->selectAll()V

    .line 267
    iget-object v0, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 269
    iget-object v0, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$100(Lcom/android/launcher2/Folder;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 270
    iget-object v0, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    #setter for: Lcom/android/launcher2/Folder;->mIsEditingName:Z
    invoke-static {v0, v3}, Lcom/android/launcher2/Folder;->access$202(Lcom/android/launcher2/Folder;Z)Z

    .line 271
    return v3
.end method
