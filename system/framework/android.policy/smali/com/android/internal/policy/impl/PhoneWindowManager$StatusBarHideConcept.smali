.class Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHideConcept"
.end annotation


# instance fields
.field private mComponentNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter

    .prologue
    .line 5600
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5601
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5600
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public isStatusBarCanHide(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "componentName"

    .prologue
    .line 5619
    if-nez p1, :cond_0

    .line 5620
    const/4 v0, 0x0

    .line 5624
    :goto_0
    return v0

    .line 5623
    :cond_0
    monitor-enter p0

    .line 5624
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 5625
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStatusBarCanHide(Landroid/content/ComponentName;Z)Z
    .locals 1
    .parameter "componentName"
    .parameter "canHide"

    .prologue
    .line 5604
    if-nez p1, :cond_0

    .line 5605
    const/4 v0, 0x0

    .line 5614
    :goto_0
    return v0

    .line 5608
    :cond_0
    monitor-enter p0

    .line 5609
    if-eqz p2, :cond_1

    .line 5610
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5614
    :goto_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 5615
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5612
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$StatusBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
