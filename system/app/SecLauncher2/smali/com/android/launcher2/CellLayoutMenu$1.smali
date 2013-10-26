.class Lcom/android/launcher2/CellLayoutMenu$1;
.super Ljava/lang/Object;
.source "CellLayoutMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutMenu;->onDragEvent(Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutMenu;

.field final synthetic val$menuFragment:Lcom/android/launcher2/MenuFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutMenu;Lcom/android/launcher2/MenuFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutMenu$1;->this$0:Lcom/android/launcher2/CellLayoutMenu;

    iput-object p2, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "CellLayoutMenu"

    const-string v1, "item removed from folder; appModelUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 86
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->closeFolders()V

    .line 87
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMenu$1;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->appModelUpdated()V

    .line 88
    return-void
.end method
