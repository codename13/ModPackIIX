.class public Lcom/android/internal/policy/impl/CircleUnreadMsgList;
.super Landroid/widget/FrameLayout;
.source "CircleUnreadMsgList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleUnreadMsgList"


# instance fields
.field private final DEBUG:Z

.field private final MAX_LIST_NUM:I

.field private mContext:Landroid/content/Context;

.field private mGapY:I

.field private mGuideLineColor:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/CircleMissedEventData;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field mTitle:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockAcquired:Z

.field private m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->DEBUG:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->MAX_LIST_NUM:I

    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090062

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    const v2, 0x1020312

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mList:Ljava/util/ArrayList;

    .line 82
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mTitle:Landroid/widget/TextView;

    .line 83
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mList:Ljava/util/ArrayList;

    invoke-direct {v2, p1, v3, v5}, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    .line 84
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080431

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingWidth:I

    .line 88
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingHeight:I

    .line 89
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    const v2, -0x635d57

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGuideLineColor:I

    .line 93
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    .line 94
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGuideLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    const/16 v2, 0x32

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGapY:I

    .line 101
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 102
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CircleUnreadMsgList"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    return-void
.end method

.method private setGuideLineStartPos()V
    .locals 3

    .prologue
    .line 171
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 172
    .local v0, pos:[I
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 173
    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineStartX:I

    .line 174
    const/4 v1, 0x1

    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGapY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineStartY:I

    .line 175
    return-void
.end method

.method private setGuildeLineEndPos(II)V
    .locals 1
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 178
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndX:I

    .line 179
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mGapY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndY:I

    .line 180
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 160
    const-string v0, "CircleUnreadMsgList"

    const-string v1, "draw"

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndX:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndY:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 167
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineStartY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLineEndY:I

    iget v4, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mRingHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 140
    .local v0, action:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->setGuildeLineEndPos(II)V

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->invalidate()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLockAcquired:Z

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mTitle:Landroid/widget/TextView;

    const v2, 0x104063e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 149
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->setGuideLineStartPos()V

    goto :goto_0

    .line 150
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 151
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLockAcquired:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLockAcquired:Z

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public updateUnreadMsg(I)V
    .locals 10
    .parameter "count"

    .prologue
    .line 106
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    move-result-object v3

    .line 107
    .local v3, dbAdapter:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    .line 108
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->getUnreadMsgCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 110
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 111
    .local v4, i:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 112
    move v5, p1

    .line 113
    .local v5, max_count:I
    const/4 v7, 0x4

    if-le v5, v7, :cond_0

    .line 114
    const/4 v5, 0x4

    .line 116
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    :cond_1
    if-lt v4, v5, :cond_3

    .line 132
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->close()V

    .line 135
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->m_adapter:Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/CircleMissedEventListAdapter;->notifyDataSetChanged()V

    .line 136
    return-void

    .line 121
    :cond_3
    const-string v7, "name"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, name:Ljava/lang/String;
    const-string v7, "date"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, date:Ljava/lang/String;
    const-string v7, "content"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, content:Ljava/lang/String;
    const-string v7, "CircleUnreadMsgList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUnreadMsg : name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " date = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " content = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->mList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/policy/impl/CircleMissedEventData;

    invoke-direct {v8, v6, v0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v4, v4, 0x1

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0
.end method
