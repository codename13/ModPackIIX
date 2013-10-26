.class public Lcom/sec/android/glview/TwGLViewGroup;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLViewGroup.java"


# static fields
.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000


# instance fields
.field protected mGLViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/glview/TwGLView;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewGroupFlags:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 1
    .parameter "glContext"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initViewGroup()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    .line 87
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initViewGroup()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    .line 106
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initViewGroup()V

    .line 107
    return-void
.end method

.method private initViewGroup()V
    .locals 1

    .prologue
    .line 110
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setDescendantFocusability(I)V

    .line 111
    return-void
.end method


# virtual methods
.method public addView(ILcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "position"
    .parameter "view"

    .prologue
    .line 589
    if-nez p2, :cond_0

    .line 590
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 593
    :cond_0
    iput-object p0, p2, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 594
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v2

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 602
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 603
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 600
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 574
    :cond_0
    iput-object p0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 575
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 579
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 580
    return-void

    .line 577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 156
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 158
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 161
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 160
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 161
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 163
    return-void
.end method

.method public contains(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-nez v3, :cond_0

    .line 195
    :goto_0
    return v2

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 190
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 191
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 194
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public contains(Lcom/sec/android/glview/TwGLView;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 166
    if-nez p1, :cond_0

    .line 176
    :goto_0
    return v2

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    .line 171
    .local v0, child:Lcom/sec/android/glview/TwGLView;
    if-ne v0, p1, :cond_1

    .line 172
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 175
    .end local v0           #child:Lcom/sec/android/glview/TwGLView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dumpViewHierarchy(I)V
    .locals 7
    .parameter "level"

    .prologue
    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 725
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 728
    const-string v4, "DUMP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Focusable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->isFocusable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Clip(Manual:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_1
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v5

    .line 733
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 734
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->dumpViewHierarchy(I)V

    goto :goto_2

    .line 736
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 730
    :cond_1
    const-string v4, "DUMP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Focusable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->isFocusable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 736
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    return-void
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 18
    .parameter "focusedView"
    .parameter "direction"

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const/4 v4, 0x0

    .line 366
    :goto_0
    return-object v4

    .line 288
    :cond_0
    const/4 v4, 0x0

    .line 290
    .local v4, candidateView:Lcom/sec/android/glview/TwGLView;
    invoke-super/range {p0 .. p2}, Lcom/sec/android/glview/TwGLView;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    .line 291
    .local v11, tempView:Lcom/sec/android/glview/TwGLView;
    if-eqz v11, :cond_1

    .line 292
    move-object v4, v11

    .line 295
    :cond_1
    const/4 v12, 0x0

    .line 296
    .local v12, tempViewLeft:F
    const/4 v13, 0x0

    .line 297
    .local v13, tempViewTop:F
    const/4 v5, 0x0

    .line 298
    .local v5, candidateViewLeft:F
    const/4 v6, 0x0

    .line 299
    .local v6, candidateViewTop:F
    const/4 v9, 0x0

    .line 300
    .local v9, horizontalOffset:F
    const/4 v14, 0x0

    .line 301
    .local v14, verticalOffset:F
    const/4 v2, 0x0

    .line 302
    .local v2, candidateHorizontalOffset:F
    const/4 v3, 0x0

    .line 303
    .local v3, candidateVerticalOffset:F
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v7

    .line 304
    .local v7, focusedViewLeft:F
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v8

    .line 306
    .local v8, focusedViewTop:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 307
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/glview/TwGLView;

    .line 308
    .local v15, view:Lcom/sec/android/glview/TwGLView;
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/sec/android/glview/TwGLView;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    .line 309
    if-eqz v11, :cond_2

    .line 310
    if-nez v4, :cond_3

    .line 311
    move-object v4, v11

    goto :goto_1

    .line 313
    :cond_3
    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v12

    .line 314
    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v13

    .line 315
    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v5

    .line 316
    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v6

    .line 317
    sub-float v16, v7, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 318
    sub-float v16, v8, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 320
    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    .line 322
    :sswitch_0
    cmpl-float v16, v12, v5

    if-lez v16, :cond_2

    cmpg-float v16, v12, v7

    if-gez v16, :cond_2

    .line 323
    cmpl-float v16, v9, v14

    if-lez v16, :cond_2

    .line 324
    sub-float v16, v5, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 325
    cmpg-float v16, v9, v2

    if-gez v16, :cond_2

    .line 326
    move-object v4, v11

    goto :goto_1

    .line 332
    :sswitch_1
    cmpg-float v16, v12, v5

    if-gez v16, :cond_2

    cmpl-float v16, v12, v7

    if-lez v16, :cond_2

    .line 333
    cmpl-float v16, v9, v14

    if-lez v16, :cond_2

    .line 334
    sub-float v16, v5, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 335
    cmpg-float v16, v9, v2

    if-gez v16, :cond_2

    .line 336
    move-object v4, v11

    goto :goto_1

    .line 342
    :sswitch_2
    cmpl-float v16, v13, v6

    if-lez v16, :cond_2

    cmpg-float v16, v13, v8

    if-gez v16, :cond_2

    .line 343
    cmpg-float v16, v9, v14

    if-gez v16, :cond_2

    .line 344
    sub-float v16, v6, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 345
    cmpg-float v16, v14, v3

    if-gez v16, :cond_2

    .line 346
    move-object v4, v11

    goto/16 :goto_1

    .line 352
    :sswitch_3
    cmpg-float v16, v13, v6

    if-gez v16, :cond_2

    cmpl-float v16, v13, v8

    if-lez v16, :cond_2

    .line 353
    cmpg-float v16, v9, v14

    if-gez v16, :cond_2

    .line 354
    neg-float v0, v8

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 355
    cmpg-float v16, v14, v3

    if-gez v16, :cond_2

    .line 356
    move-object v4, v11

    goto/16 :goto_1

    .line 365
    .end local v15           #view:Lcom/sec/android/glview/TwGLView;
    :cond_4
    monitor-exit v17

    goto/16 :goto_0

    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, resultView:Lcom/sec/android/glview/TwGLView;
    iget-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-nez v5, :cond_1

    move-object p0, v4

    .line 280
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 260
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    move-object p0, v4

    .line 261
    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getBypassTouch()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object p0, v4

    .line 264
    goto :goto_0

    .line 266
    :cond_3
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v5

    .line 267
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 268
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3, p1, p2}, Lcom/sec/android/glview/TwGLView;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    .line 269
    .local v2, v:Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_4

    .line 270
    move-object v1, v2

    goto :goto_1

    .line 272
    .end local v2           #v:Lcom/sec/android/glview/TwGLView;
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_5
    monitor-exit v5

    .line 274
    if-eqz v1, :cond_6

    move-object p0, v1

    .line 275
    goto :goto_0

    .line 272
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 277
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_0

    move-object p0, v4

    .line 280
    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 5
    .parameter "id"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 220
    .end local p0
    :goto_0
    return-object p0

    .line 208
    .restart local p0
    :cond_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 214
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 215
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 216
    .local v1, v:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_1

    .line 217
    monitor-exit v4

    move-object p0, v1

    goto :goto_0

    .line 219
    .end local v1           #v:Lcom/sec/android/glview/TwGLView;
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    monitor-exit v4

    .line 220
    const/4 p0, 0x0

    goto :goto_0

    .line 219
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 5
    .parameter "tag"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTag()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 245
    .end local p0
    :goto_0
    return-object p0

    .line 233
    .restart local p0
    :cond_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 239
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 240
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 241
    .local v1, v:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_1

    .line 242
    monitor-exit v4

    move-object p0, v1

    goto :goto_0

    .line 244
    .end local v1           #v:Lcom/sec/android/glview/TwGLView;
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    monitor-exit v4

    .line 245
    const/4 p0, 0x0

    goto :goto_0

    .line 244
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getDescendantFocusability()I
    .locals 2

    .prologue
    .line 627
    iget v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getIndex(Lcom/sec/android/glview/TwGLView;)I
    .locals 4
    .parameter "view"

    .prologue
    .line 138
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 139
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    .line 141
    .local v0, child:Lcom/sec/android/glview/TwGLView;
    if-ne v0, p1, :cond_0

    .line 142
    monitor-exit v3

    .line 146
    .end local v0           #child:Lcom/sec/android/glview/TwGLView;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 139
    .restart local v0       #child:Lcom/sec/android/glview/TwGLView;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v0           #child:Lcom/sec/android/glview/TwGLView;
    :cond_1
    monitor-exit v3

    .line 146
    const/4 v1, -0x1

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 5
    .parameter "gl"

    .prologue
    .line 475
    const/4 v1, 0x1

    .line 476
    .local v1, ret:Z
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 478
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 479
    const/4 v1, 0x0

    goto :goto_0

    .line 482
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v3, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initSize()V

    .line 487
    :cond_2
    return v1

    .line 482
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getView(I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .parameter "index"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initSize()V
    .locals 7

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v2

    .line 377
    .local v2, right:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v0

    .line 379
    .local v0, bottom:F
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v5

    .line 380
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 381
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float/2addr v4, v6

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    .line 382
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float v2, v4, v6

    .line 383
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float/2addr v4, v6

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 384
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float v0, v4, v6

    goto :goto_0

    .line 386
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getSizeSpecified()Z

    move-result v4

    if-nez v4, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 389
    :cond_3
    return-void

    .line 386
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected onAlphaUpdated()V
    .locals 4

    .prologue
    .line 540
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 541
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 542
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 543
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    goto :goto_0

    .line 545
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 497
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v5

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getMatrix()[F

    move-result-object v2

    .line 499
    .local v2, matrix:[F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 500
    .local v0, clipRect:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 501
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 502
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 503
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 504
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 505
    invoke-virtual {v3, p1, v2, v0}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 506
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 507
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 500
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    monitor-exit v5

    .line 511
    return-void

    .line 510
    .end local v0           #clipRect:Landroid/graphics/Rect;
    .end local v1           #i:I
    .end local v2           #matrix:[F
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected onLayoutUpdated()V
    .locals 4

    .prologue
    .line 530
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 531
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 532
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 533
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    goto :goto_0

    .line 535
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 5
    .parameter "gl"

    .prologue
    .line 453
    const/4 v1, 0x1

    .line 454
    .local v1, ret:Z
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 456
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    const/4 v1, 0x0

    goto :goto_0

    .line 460
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v3, :cond_2

    .line 462
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->initSize()V

    .line 465
    :cond_2
    return v1

    .line 460
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 555
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 556
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 557
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    goto :goto_0

    .line 559
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    .line 561
    return-void
.end method

.method protected onOutOfScreen()V
    .locals 3

    .prologue
    .line 515
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v2

    .line 516
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    .line 521
    return-void

    .line 519
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onRequestFocusInDescendants(ILcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedView"

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v1

    .line 671
    .local v1, count:I
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_0

    .line 672
    const/4 v5, 0x0

    .line 673
    .local v5, index:I
    const/4 v4, 0x1

    .line 674
    .local v4, increment:I
    move v2, v1

    .line 680
    .local v2, end:I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v7

    .line 681
    move v3, v5

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 682
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    .line 683
    .local v0, child:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v6

    if-nez v6, :cond_1

    .line 684
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 685
    const/4 v6, 0x1

    monitor-exit v7

    .line 690
    .end local v0           #child:Lcom/sec/android/glview/TwGLView;
    :goto_2
    return v6

    .line 676
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #increment:I
    .end local v5           #index:I
    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 677
    .restart local v5       #index:I
    const/4 v4, -0x1

    .line 678
    .restart local v4       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 681
    .restart local v0       #child:Lcom/sec/android/glview/TwGLView;
    .restart local v3       #i:I
    :cond_1
    add-int/2addr v3, v4

    goto :goto_1

    .line 689
    .end local v0           #child:Lcom/sec/android/glview/TwGLView;
    :cond_2
    monitor-exit v7

    .line 690
    const/4 v6, 0x0

    goto :goto_2

    .line 689
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public onReset()V
    .locals 4

    .prologue
    .line 715
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 716
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 717
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    .line 719
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    return-void
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 612
    if-nez p1, :cond_0

    .line 624
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 616
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 619
    .local v1, v:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_1

    .line 621
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #v:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 623
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    goto :goto_0
.end method

.method public requestFocus(ILcom/sec/android/glview/TwGLView;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedView"

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 648
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 660
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 657
    :cond_0
    :goto_0
    return v1

    .line 652
    :sswitch_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 653
    .local v1, took:Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->onRequestFocusInDescendants(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto :goto_0

    .line 656
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->onRequestFocusInDescendants(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 657
    .restart local v1       #took:Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto :goto_0

    .line 648
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetSize()V
    .locals 7

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v2

    .line 396
    .local v2, right:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v0

    .line 397
    .local v0, bottom:F
    iget-object v5, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v5

    .line 398
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 399
    .local v3, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float/2addr v4, v6

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    .line 400
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float v2, v4, v6

    .line 401
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float/2addr v4, v6

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    .line 402
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float v0, v4, v6

    goto :goto_0

    .line 404
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->refreshClipRect()V

    .line 407
    return-void

    .line 404
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 631
    sparse-switch p1, :sswitch_data_0

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :sswitch_0
    iget v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    .line 641
    iget v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mViewGroupFlags:I

    .line 642
    return-void

    .line 631
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 700
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 701
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 702
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    goto :goto_0

    .line 704
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 706
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 8
    .parameter "paddings"

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 417
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 418
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 419
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 420
    .local v0, childPaddings:Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 421
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 425
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1

    .line 426
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getRight()F

    move-result v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 430
    :goto_2
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 431
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 435
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3

    .line 436
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->getBottom()F

    move-result v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 441
    :goto_4
    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 443
    .end local v0           #childPaddings:Landroid/graphics/Rect;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 423
    .restart local v0       #childPaddings:Landroid/graphics/Rect;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 428
    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 433
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 438
    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 443
    .end local v0           #childPaddings:Landroid/graphics/Rect;
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    return-void
.end method
