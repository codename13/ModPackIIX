.class Lcom/wanam/systemui/quickpanel/PowerWidget$2;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanam/systemui/quickpanel/PowerWidget;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/PowerWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$2;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$2;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    #calls: Lcom/wanam/systemui/quickpanel/PowerWidget;->animateCollapse()V
    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->access$300(Lcom/wanam/systemui/quickpanel/PowerWidget;)V

    const/4 v0, 0x1

    return v0
.end method
