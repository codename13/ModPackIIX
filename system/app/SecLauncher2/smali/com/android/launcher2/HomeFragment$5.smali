.class Lcom/android/launcher2/HomeFragment$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment;->completeAddAppWidget(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$launcherInfo:Lcom/android/launcher2/HomeWidgetItem;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$5;->this$0:Lcom/android/launcher2/HomeFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomeFragment$5;->val$launcherInfo:Lcom/android/launcher2/HomeWidgetItem;

    iput-object p3, p0, Lcom/android/launcher2/HomeFragment$5;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$5;->val$launcherInfo:Lcom/android/launcher2/HomeWidgetItem;

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p0}, Landroid/appwidget/AppWidgetHostView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1051
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$5;->val$launcherInfo:Lcom/android/launcher2/HomeWidgetItem;

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v1, Lcom/android/launcher2/HomeFragment$5$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeFragment$5$1;-><init>(Lcom/android/launcher2/HomeFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    .line 1060
    return-void
.end method
