.class public Lcom/android/internal/policy/impl/TickerUtil;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerUtil$YahooNewsColumns;,
        Lcom/android/internal/policy/impl/TickerUtil$YahooNewsHeadColumns;,
        Lcom/android/internal/policy/impl/TickerUtil$NewsConstants;,
        Lcom/android/internal/policy/impl/TickerUtil$StockConstants;,
        Lcom/android/internal/policy/impl/TickerUtil$FacebookConstants;,
        Lcom/android/internal/policy/impl/TickerUtil$FacebookData;,
        Lcom/android/internal/policy/impl/TickerUtil$StockItem;,
        Lcom/android/internal/policy/impl/TickerUtil$NewsData;,
        Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;,
        Lcom/android/internal/policy/impl/TickerUtil$StockDemon;,
        Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;
    }
.end annotation


# static fields
.field public static final DBG_FB:Z = true

.field private static TAG:Ljava/lang/String;

.field private static calendar:Ljava/util/GregorianCalendar;

.field private static currentDay:Ljava/lang/String;

.field private static currentMonth:Ljava/lang/String;

.field private static currentYear:Ljava/lang/String;

.field private static mFacebookUpdateDate:Ljava/lang/String;

.field private static mNewsUpdateDate:Ljava/lang/String;

.field private static mStockUpdateDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, "Ticker"

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    .line 27
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    .line 28
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    .line 29
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    .line 31
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    .line 32
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->currentYear:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->currentMonth:Ljava/lang/String;

    .line 34
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->currentDay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 591
    return-void
.end method

.method public static formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/android/internal/policy/impl/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, value:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    :cond_0
    const-string v1, "MM/dd"

    .line 63
    :cond_1
    :goto_0
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 60
    :cond_2
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string v1, "dd/MM"

    goto :goto_0
.end method

.method public static formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 49
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v1, result:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 51
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 71
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 72
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 73
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 75
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 76
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 77
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 87
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getDateTimeString(JLandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "timemills"
    .parameter "contex"

    .prologue
    .line 96
    :try_start_0
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 97
    .local v1, dateformat:Ljava/text/DateFormat;
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 99
    .local v3, timeformat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 100
    .local v0, date:Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 102
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateformat:Ljava/text/DateFormat;
    .end local v3           #timeformat:Ljava/text/DateFormat;
    :goto_0
    return-object v4

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, ""

    goto :goto_0
.end method

.method public static getDefaultLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 481
    const-string v0, ""

    .line 482
    .local v0, defaultLanguage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 484
    return-object v0
.end method

.method private static getDefaultNews(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "ctx"
    .parameter "region"

    .prologue
    const/4 v4, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    .local v6, DefaultNews:Ljava/lang/String;
    const-string v0, "\\/"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, code:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v0, "REGION"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v0, " = ? AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v0, "LANG"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v0, " = ? AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v0, "TITLE"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v0, " = ? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    array-length v0, v8

    if-ge v0, v13, :cond_0

    move-object v7, v6

    .line 133
    .end local v6           #DefaultNews:Ljava/lang/String;
    .local v7, DefaultNews:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 120
    .end local v7           #DefaultNews:Ljava/lang/String;
    .restart local v6       #DefaultNews:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .line 121
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsHeadColumns;->TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsHeadColumns;->HEADER_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aget-object v5, v8, v11

    aput-object v5, v4, v11

    aget-object v5, v8, v12

    aput-object v5, v4, v12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "yh_daemon_service_key_set_default_news"

    invoke-static {v5, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const-string v5, "ORDERED ASC,_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 125
    if-eqz v9, :cond_3

    .line 126
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    :cond_1
    const-string v0, "CATEGORY"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .line 133
    .end local v6           #DefaultNews:Ljava/lang/String;
    .restart local v7       #DefaultNews:Ljava/lang/String;
    goto :goto_0
.end method

.method static getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$FacebookData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 211
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v1, "getFacebookData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v10, mFacebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$FacebookData;>;"
    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->setCurrentDateTime()V

    .line 216
    const/4 v9, 0x0

    .line 218
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_2

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$FacebookConstants;->TABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 221
    if-eqz v9, :cond_3

    .line 222
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    new-instance v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;

    invoke-direct {v11}, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;-><init>()V

    .line 226
    .local v11, mFacebookData:Lcom/android/internal/policy/impl/TickerUtil$FacebookData;
    const/4 v12, 0x0

    .line 228
    .local v12, mTemp:Ljava/lang/String;
    const-string v0, "message"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookContents:Ljava/lang/String;

    .line 234
    const-string v0, "create_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 235
    invoke-static {p0, v12}, Lcom/android/internal/policy/impl/TickerUtil;->setFacebookDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookCreatedTime:Ljava/lang/String;

    .line 237
    const-string v0, "from_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookFromName:Ljava/lang/String;

    .line 239
    const-string v0, "post_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookPostID:Ljava/lang/String;

    .line 242
    const-string v0, "updated_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 243
    .local v6, FacebookTime:J
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v8, FacebookUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v0, "  "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-static {p0, v6, v7}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v0, "  "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-static {p0, v6, v7}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    .line 250
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookContents:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookCreatedTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookFromName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookPostID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    .end local v6           #FacebookTime:J
    .end local v8           #FacebookUpdatedTime_buf:Ljava/lang/StringBuffer;
    .end local v11           #mFacebookData:Lcom/android/internal/policy/impl/TickerUtil$FacebookData;
    .end local v12           #mTemp:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v10

    .line 267
    :goto_0
    return-object v2

    .line 262
    :cond_3
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v1, "getFacebookData() cursor no data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getFacebookUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 22
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$NewsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v18, mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_set_default_news"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 276
    .local v16, defaultNews:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultNews = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_app_service_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 280
    .local v21, value:I
    and-int/lit8 v1, v21, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v17, 0x1

    .line 282
    .local v17, mAppLockScreen:Z
    :goto_0
    const/4 v15, 0x0

    .line 284
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_0

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_regions"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 286
    .local v13, city:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 287
    const/16 v18, 0x0

    .line 344
    .end local v13           #city:Ljava/lang/String;
    .end local v18           #mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_0
    :goto_1
    return-object v18

    .line 280
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #mAppLockScreen:Z
    .restart local v18       #mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 289
    .restart local v13       #city:Ljava/lang/String;
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v17       #mAppLockScreen:Z
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/policy/impl/TickerUtil;->getDefaultNews(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 291
    .local v14, currentdefaultNews:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v20, sb:Ljava/lang/StringBuffer;
    const-string v1, "NEWS_CATEGORY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v1, " = ? "

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsColumns;->TABLE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsColumns;->CONTENTS_COLS:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    const-string v6, "NEWS_PUBDATE DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 298
    if-eqz v15, :cond_5

    .line 299
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    :cond_3
    new-instance v19, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/policy/impl/TickerUtil$NewsData;-><init>()V

    .line 304
    .local v19, mNewsData:Lcom/android/internal/policy/impl/TickerUtil$NewsData;
    const-string v1, "NEWS_TITLE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsTitle:Ljava/lang/String;

    .line 306
    const-string v1, "NEWS_CONTENTTEXT"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsContentText:Ljava/lang/String;

    .line 308
    const-string v1, "NEWS_CREDIT"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsCredit:Ljava/lang/String;

    .line 311
    const-string v1, "NEWS_PUBDATE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 312
    .local v7, NewsPublishTime:J
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 313
    .local v11, NewsTime_buf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v1, "  "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsPublishTime:Ljava/lang/String;

    .line 320
    const-string v1, "NEWS_TIME"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 321
    .local v9, NewsTime:J
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 322
    .local v12, NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v1, "  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v1, "  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsTime:Ljava/lang/String;

    .line 329
    const-string v1, "NEWS_LINK"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    .line 330
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewsURL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    .line 333
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNewsUpdateDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 339
    .end local v7           #NewsPublishTime:J
    .end local v9           #NewsTime:J
    .end local v11           #NewsTime_buf:Ljava/lang/StringBuffer;
    .end local v12           #NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    .end local v19           #mNewsData:Lcom/android/internal/policy/impl/TickerUtil$NewsData;
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 341
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method static getNewsUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static getStockData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 23
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$StockItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stockclock_daemon_service_key_app_service_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 350
    .local v11, appServiceStatus:I
    and-int/lit8 v3, v11, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v17, 0x1

    .line 353
    .local v17, mAppLockScreen:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 354
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 355
    .local v13, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 357
    .local v19, pm:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    .line 359
    .local v15, isEdaily:Z
    const/16 v16, 0x0

    .line 361
    .local v16, isSina:Z
    const/16 v20, 0x0

    .line 365
    .local v20, stockdemon:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_start_0
    const-string v3, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 366
    const-string v3, "content://com.sec.android.daemonapp.ap.yahoostock.stockclock/maininfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 367
    sget-object v20, Lcom/android/internal/policy/impl/TickerUtil$StockDemon;->Yahoo:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    :try_start_1
    const-string v3, "com.sec.android.daemonapp.stockclock"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 375
    const-string v3, "content://com.sec.android.daemonapp.stockclock/daemoninfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 376
    sget-object v20, Lcom/android/internal/policy/impl/TickerUtil$StockDemon;->Edaily:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    :goto_2
    :try_start_2
    const-string v3, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 384
    const-string v3, "content://com.sec.android.daemonapp.ap.sinastock.stockclock/daemoninfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 385
    sget-object v20, Lcom/android/internal/policy/impl/TickerUtil$StockDemon;->Sina:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 386
    const/16 v16, 0x1

    .line 391
    :goto_3
    if-nez v20, :cond_1

    .line 392
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "There is no stock daemon."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v21, 0x0

    .line 477
    :goto_4
    return-object v21

    .line 350
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #isEdaily:Z
    .end local v16           #isSina:Z
    .end local v17           #mAppLockScreen:Z
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #stockdemon:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 368
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v15       #isEdaily:Z
    .restart local v16       #isSina:Z
    .restart local v17       #mAppLockScreen:Z
    .restart local v19       #pm:Landroid/content/pm/PackageManager;
    .restart local v20       #stockdemon:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :catch_0
    move-exception v14

    .line 369
    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 377
    .end local v14           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v12

    .line 378
    .local v12, common:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "[NameNotFoundException] Edayly daemon not installed !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 387
    .end local v12           #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v12

    .line 388
    .restart local v12       #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "[NameNotFoundException] Sina daemon not installed !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 396
    .end local v12           #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v21, stocklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    if-eqz v13, :cond_e

    .line 399
    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 400
    const/4 v15, 0x1

    .line 402
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 405
    :cond_3
    new-instance v18, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/policy/impl/TickerUtil$StockItem;-><init>()V

    .line 406
    .local v18, mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    const/16 v22, 0x0

    .line 407
    .local v22, value:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v15, v3, :cond_6

    .line 409
    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/impl/TickerUtil;->getDefaultLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 410
    const-string v3, "NAME"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 414
    :goto_5
    const-string v3, "CURRENT_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 415
    const-string v3, "CHANGE_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 416
    const-string v3, "CHANGE_PERCENT"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 418
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :goto_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 472
    .end local v18           #mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    .end local v22           #value:Ljava/lang/String;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 412
    .restart local v18       #mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    .restart local v22       #value:Ljava/lang/String;
    :cond_5
    const-string v3, "HNAME"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    goto :goto_5

    .line 421
    :cond_6
    const-string v3, "NAME"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 422
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 423
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 424
    :cond_7
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 425
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_c

    .line 426
    const-string v3, "PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 431
    :goto_7
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 432
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 433
    :cond_8
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 434
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_d

    .line 435
    const-string v3, "CHANGE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 440
    :goto_8
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 441
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 442
    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 444
    const-string v3, "CHANGE_PERCENT"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 445
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 446
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 447
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 449
    const-string v3, "UPDATE_DATE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 452
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 453
    .local v8, NewsTime:J
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 454
    .local v10, NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v3, "  "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    const-string v3, "  "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->updateDate:Ljava/lang/String;

    .line 459
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/policy/impl/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    .line 461
    if-nez v16, :cond_b

    .line 463
    const-string v3, "LINK_URL"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->url:Ljava/lang/String;

    .line 465
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_b
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 429
    .end local v8           #NewsTime:J
    .end local v10           #NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    :cond_c
    const-string v3, "CURRENT_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_7

    .line 438
    :cond_d
    const-string v3, "CHANGE_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_8

    .line 474
    .end local v18           #mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    .end local v22           #value:Ljava/lang/String;
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_4
.end method

.method static getStockUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static setCurrentDateTime()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    .line 151
    const-string v0, "yyyy"

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->currentYear:Ljava/lang/String;

    .line 152
    const-string v0, "MM"

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->currentMonth:Ljava/lang/String;

    .line 153
    const-string v0, "dd"

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->currentDay:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public static setFacebookDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "time"

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    const-string v10, ""

    .line 207
    :goto_0
    return-object v10

    .line 160
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v5, result:Ljava/lang/StringBuffer;
    move-object v3, p1

    .line 162
    .local v3, mTime:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 165
    .local v0, date:Ljava/util/Date;
    :try_start_0
    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    :goto_1
    const-string v10, "yyyy"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 171
    .local v9, year:Ljava/lang/String;
    const-string v10, "MM"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, month:Ljava/lang/String;
    const-string v10, "dd"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, day:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/policy/impl/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, value:Ljava/lang/String;
    const/4 v8, 0x0

    .line 176
    .local v8, valuewithyear:Ljava/lang/String;
    const-string v10, "yyyy-MM-dd"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 177
    const-string v7, "MM/dd"

    .line 178
    const-string v8, "yyyy/MM/dd"

    .line 187
    :goto_2
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    if-nez v10, :cond_1

    .line 188
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v10, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    .line 190
    :cond_1
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "day : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentDay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/policy/impl/TickerUtil;->currentDay:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->currentYear:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 194
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->currentDay:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->currentMonth:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 195
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 166
    .end local v1           #day:Ljava/lang/String;
    .end local v4           #month:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #valuewithyear:Ljava/lang/String;
    .end local v9           #year:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 167
    .local v2, e:Ljava/text/ParseException;
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v11, "parse date ParseException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 179
    .end local v2           #e:Ljava/text/ParseException;
    .restart local v1       #day:Ljava/lang/String;
    .restart local v4       #month:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    .restart local v8       #valuewithyear:Ljava/lang/String;
    .restart local v9       #year:Ljava/lang/String;
    :cond_2
    const-string v10, "MM-dd-yyyy"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 180
    const-string v7, "MM/dd"

    .line 181
    const-string v8, "MM/dd/yyyy"

    goto/16 :goto_2

    .line 183
    :cond_3
    const-string v7, "dd/MM"

    .line 184
    const-string v8, "dd/MM/yyyy"

    goto/16 :goto_2

    .line 197
    :cond_4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v10, "  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 202
    :cond_5
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const-string v10, "  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method
