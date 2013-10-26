.class Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateNormal;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

.field final synthetic val$item:Lcom/android/launcher2/AppItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;Lcom/android/launcher2/AppItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1085
    return-void
.end method
