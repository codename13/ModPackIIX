.class Lcom/android/launcher2/HomeFragment$6;
.super Landroid/os/Handler;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1103
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1104
    const/4 v1, 0x0

    .line 1105
    .local v1, i:I
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/launcher2/HomeFragment;->access$400(Lcom/android/launcher2/HomeFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1106
    .local v3, key:Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mWidgetsToAdvance:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/launcher2/HomeFragment;->access$400(Lcom/android/launcher2/HomeFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1107
    .local v4, v:Landroid/view/View;
    mul-int/lit16 v0, v1, 0xfa

    .line 1108
    .local v0, delay:I
    instance-of v5, v4, Landroid/widget/Advanceable;

    if-eqz v5, :cond_0

    .line 1109
    new-instance v5, Lcom/android/launcher2/HomeFragment$6$1;

    invoke-direct {v5, p0, v4}, Lcom/android/launcher2/HomeFragment$6$1;-><init>(Lcom/android/launcher2/HomeFragment$6;Landroid/view/View;)V

    int-to-long v6, v0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/launcher2/HomeFragment$6;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1117
    goto :goto_0

    .line 1118
    .end local v0           #delay:I
    .end local v3           #key:Landroid/view/View;
    .end local v4           #v:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    const-wide/16 v6, 0x4e20

    #calls: Lcom/android/launcher2/HomeFragment;->sendAdvanceMessage(J)V
    invoke-static {v5, v6, v7}, Lcom/android/launcher2/HomeFragment;->access$500(Lcom/android/launcher2/HomeFragment;J)V

    .line 1132
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 1120
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 1121
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mMarketSample:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher2/HomeFragment;->access$600(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1122
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mMarketSample:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher2/HomeFragment;->access$600(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1123
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    iget-object v5, v5, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    const v6, 0x7f070036

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1124
    .restart local v4       #v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v5}, Lcom/android/launcher2/HomeFragment;->access$700(Lcom/android/launcher2/HomeFragment;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 1127
    .end local v4           #v:Landroid/view/View;
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1128
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mMarketSample:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher2/HomeFragment;->access$600(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1129
    iget-object v5, p0, Lcom/android/launcher2/HomeFragment$6;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mMarketSample:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher2/HomeFragment;->access$600(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_1
.end method
