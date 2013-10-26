.class Lcom/android/launcher2/MenuAppsGrid$3;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 401
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(Z)Z

    .line 402
    return v1
.end method
