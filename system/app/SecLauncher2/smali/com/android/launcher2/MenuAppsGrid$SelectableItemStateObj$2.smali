.class Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;)V
    .locals 0
    .parameter

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    .line 1308
    .local v0, state:Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1316
    :goto_0
    return-void

    .line 1310
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->returnToPreviousState()V

    goto :goto_0

    .line 1314
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method
