.class Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;)V
    .locals 0
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;->this$1:Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;->this$1:Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    .line 1083
    return-void
.end method
