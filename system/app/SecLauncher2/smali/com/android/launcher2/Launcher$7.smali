.class Lcom/android/launcher2/Launcher$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$clingPrefKey:Ljava/lang/String;

.field final synthetic val$clingView:Lcom/android/launcher2/Cling;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$7;->val$clingView:Lcom/android/launcher2/Cling;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$7;->val$clingPrefKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/launcher2/Launcher$7;->val$isChecked:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 1784
    iget-object v2, p0, Lcom/android/launcher2/Launcher$7;->val$clingView:Lcom/android/launcher2/Cling;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    .line 1785
    iget-object v2, p0, Lcom/android/launcher2/Launcher$7;->val$clingView:Lcom/android/launcher2/Cling;

    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->cleanup()V

    .line 1786
    iget-object v2, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1788
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1789
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/launcher2/Launcher$7;->val$clingPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher$7;->val$isChecked:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1790
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1805
    return-void
.end method
