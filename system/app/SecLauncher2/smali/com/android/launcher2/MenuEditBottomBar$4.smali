.class Lcom/android/launcher2/MenuEditBottomBar$4;
.super Ljava/lang/Object;
.source "MenuEditBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuEditBottomBar;->newPage(Lcom/android/launcher2/AppItem;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuEditBottomBar;

.field final synthetic val$menuFragment:Lcom/android/launcher2/MenuFragment;

.field final synthetic val$newScreenPos:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuEditBottomBar;Lcom/android/launcher2/MenuFragment;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBottomBar$4;->this$0:Lcom/android/launcher2/MenuEditBottomBar;

    iput-object p2, p0, Lcom/android/launcher2/MenuEditBottomBar$4;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    iput p3, p0, Lcom/android/launcher2/MenuEditBottomBar$4;->val$newScreenPos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 338
    const-string v2, "MenuEditBottomBar"

    const-string v3, "newPage appModelUpdated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar$4;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->appModelUpdated()V

    .line 340
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBottomBar$4;->val$menuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, fragView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 342
    const v2, 0x7f070047

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid;

    .line 343
    .local v1, mag:Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v1, :cond_0

    .line 344
    iget v2, p0, Lcom/android/launcher2/MenuEditBottomBar$4;->val$newScreenPos:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageAfterLayout(I)V

    .line 347
    .end local v1           #mag:Lcom/android/launcher2/MenuAppsGrid;
    :cond_0
    return-void
.end method
