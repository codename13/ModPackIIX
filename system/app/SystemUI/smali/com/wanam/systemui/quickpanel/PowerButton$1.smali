.class Lcom/wanam/systemui/quickpanel/PowerButton$1;
.super Landroid/os/Handler;
.source "PowerButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanam/systemui/quickpanel/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/PowerButton;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/PowerButton;)V
    .locals 0

    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    iget-object v2, v2, Lcom/wanam/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    const v0, 0x3060014

    const v1, 0x3060016

    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    iget-object v3, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    iget v3, v3, Lcom/wanam/systemui/quickpanel/PowerButton;->mIcon:I

    #calls: Lcom/wanam/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v0, v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$000(Lcom/wanam/systemui/quickpanel/PowerButton;II)V

    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    invoke-virtual {v2}, Lcom/wanam/systemui/quickpanel/PowerButton;->updateText()V

    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    iget v2, v2, Lcom/wanam/systemui/quickpanel/PowerButton;->mState:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    const v3, 0x3020071

    #calls: Lcom/wanam/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$000(Lcom/wanam/systemui/quickpanel/PowerButton;II)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    const v3, 0x3020073

    #calls: Lcom/wanam/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$000(Lcom/wanam/systemui/quickpanel/PowerButton;II)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    const v3, 0x3020072

    #calls: Lcom/wanam/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$000(Lcom/wanam/systemui/quickpanel/PowerButton;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
