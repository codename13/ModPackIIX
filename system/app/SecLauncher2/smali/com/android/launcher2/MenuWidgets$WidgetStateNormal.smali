.class Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateNormal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 2
    .parameter "oldState"

    .prologue
    const/4 v1, 0x0

    .line 1047
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setNormalTitleBarVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1049
    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1053
    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 1
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    #calls: Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1700(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V

    .line 1043
    return-void
.end method
