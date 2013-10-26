.class Lcom/android/launcher2/Hotseat$1;
.super Ljava/lang/Object;
.source "Hotseat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Hotseat;->resetLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Hotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Hotseat;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 180
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_1

    .line 181
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    #getter for: Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v1}, Lcom/android/launcher2/Hotseat;->access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 187
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_2

    .line 188
    new-instance v1, Lcom/android/launcher2/Hotseat$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Hotseat$1$1;-><init>(Lcom/android/launcher2/Hotseat$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    #getter for: Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v1}, Lcom/android/launcher2/Hotseat;->access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/HomeFragment;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0
.end method
