.class public Lcom/android/launcher2/ShadowGen;
.super Ljava/lang/Object;
.source "ShadowGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ShadowGen$1;,
        Lcom/android/launcher2/ShadowGen$GenThread;,
        Lcom/android/launcher2/ShadowGen$QueuedBitmap;,
        Lcom/android/launcher2/ShadowGen$CallbackEntry;,
        Lcom/android/launcher2/ShadowGen$GeneratedCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/launcher2/ShadowGen;


# instance fields
.field private mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/launcher2/ShadowGen$QueuedBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceHeight:I

.field private mSourceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/android/launcher2/ShadowGen;

    invoke-direct {v0}, Lcom/android/launcher2/ShadowGen;-><init>()V

    sput-object v0, Lcom/android/launcher2/ShadowGen;->sInstance:Lcom/android/launcher2/ShadowGen;

    .line 112
    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    .line 98
    iput v1, p0, Lcom/android/launcher2/ShadowGen;->mSourceWidth:I

    .line 99
    iput v1, p0, Lcom/android/launcher2/ShadowGen;->mSourceHeight:I

    .line 119
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/ShadowGen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/launcher2/ShadowGen;->mSourceWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/ShadowGen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/launcher2/ShadowGen;->mSourceHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher2/ShadowGen;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/launcher2/ShadowGen;->sInstance:Lcom/android/launcher2/ShadowGen;

    return-object v0
.end method

.method public static native nCompositeLayer(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Z
.end method

.method public static native nExtractLayers([Landroid/graphics/Bitmap;I)Z
.end method

.method private start()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/android/launcher2/ShadowGen$GenThread;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowGen$GenThread;-><init>(Lcom/android/launcher2/ShadowGen;)V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->setDaemon(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const-string v1, "ShadowGen"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->setName(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowGen$GenThread;->start()V

    .line 109
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;)V
    .locals 4
    .parameter "source"
    .parameter "callback"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 47
    if-nez p3, :cond_0

    .line 48
    new-instance p3, Landroid/os/Handler;

    .end local p3
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 51
    .restart local p3
    :cond_0
    new-instance v1, Lcom/android/launcher2/ShadowGen$QueuedBitmap;

    invoke-direct {v1, v2}, Lcom/android/launcher2/ShadowGen$QueuedBitmap;-><init>(Lcom/android/launcher2/ShadowGen$1;)V

    .line 52
    .local v1, qb:Lcom/android/launcher2/ShadowGen$QueuedBitmap;
    iput-object p1, v1, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    new-instance v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;

    invoke-direct {v0, v2}, Lcom/android/launcher2/ShadowGen$CallbackEntry;-><init>(Lcom/android/launcher2/ShadowGen$1;)V

    .line 54
    .local v0, ce:Lcom/android/launcher2/ShadowGen$CallbackEntry;
    iput-object p2, v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->callback:Lcom/android/launcher2/ShadowGen$GeneratedCallback;

    .line 55
    iput-object p3, v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->handler:Landroid/os/Handler;

    .line 56
    iget-object v2, v1, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 62
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    if-nez v2, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/ShadowGen;->mSourceWidth:I

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/ShadowGen;->mSourceHeight:I

    .line 69
    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen;->start()V

    .line 71
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
