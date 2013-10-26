.class Lcom/android/launcher2/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onPageEndMoving()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 684
    return-void
.end method
