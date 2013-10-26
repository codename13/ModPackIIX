.class Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Hotseat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Hotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrashCanFadeoutAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Hotseat;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Hotseat;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/Hotseat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;-><init>(Lcom/android/launcher2/Hotseat;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 757
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->unsetTrashIcon()V

    .line 750
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setAnimating(Z)V

    .line 751
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    #getter for: Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z
    invoke-static {v0}, Lcom/android/launcher2/Hotseat;->access$1200(Lcom/android/launcher2/Hotseat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    #getter for: Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;
    invoke-static {v0}, Lcom/android/launcher2/Hotseat;->access$1300(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 754
    return-void
.end method
