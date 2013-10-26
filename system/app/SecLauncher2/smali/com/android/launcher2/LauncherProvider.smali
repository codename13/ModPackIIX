.class public Lcom/android/launcher2/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherProvider$SqlArguments;,
        Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri; = null

.field static final CSC_FILE_MAINMENU:Ljava/lang/String; = "/system/csc/default_application_order.xml"

.field static final CSC_FILE_WORKSPACE:Ljava/lang/String; = "/system/csc/default_workspace.xml"

.field static final CSC_FILE_WORKSPACE_SIMPLE:Ljava/lang/String; = "/system/csc/default_workspace_simple.xml"

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0x9

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final TABLE_APPORDER:Ljava/lang/String; = "appOrder"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field static final TABLE_FAVORITES_CP:Ljava/lang/String; = "favorites_cp"

.field static final TABLE_FAVORITES_EASY:Ljava/lang/String; = "favorites_easy"

.field static final TABLE_FAVORITES_NORMAL:Ljava/lang/String; = "favorites_normal"

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"


# instance fields
.field private mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    .line 110
    const-string v0, "content://com.sec.android.app.launcher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1906
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 79
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .parameter "column"
    .parameter "values"

    .prologue
    .line 1896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1897
    .local v1, selectWhere:Ljava/lang/StringBuilder;
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1898
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1899
    if-lez v0, :cond_0

    .line 1900
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1903
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "helper"
    .parameter "db"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 290
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    .locals 2

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_0

    .line 1886
    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    return-object v0
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 355
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 359
    :cond_1
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 312
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 314
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 315
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 317
    :try_start_0
    array-length v3, p2

    .line 318
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 319
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 320
    const/4 v4, 0x0

    .line 325
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 329
    :goto_1
    return v4

    .line 318
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 328
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 329
    array-length v4, p2

    goto :goto_1

    .line 325
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 334
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 336
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 337
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 338
    .local v1, count:I
    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 340
    :cond_0
    return v1
.end method

.method public generateNewHomeId()J
    .locals 2

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewMenuId()J
    .locals 2

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 124
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v2, v2}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, type:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 129
    .end local v1           #type:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #type:Ljava/lang/String;
    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 298
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 300
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 301
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v5, v1, v6, v4, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 302
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 307
    :goto_0
    return-object v4

    .line 304
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 305
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 307
    goto :goto_0
.end method

.method isFavoritesInNormalMode()Z
    .locals 1

    .prologue
    .line 1943
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    #getter for: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesInNormalMode:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$200(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;)Z

    move-result v0

    return v0
.end method

.method public moveFavorites(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 153
    .local v3, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=? where _id=?"

    .line 154
    .local v4, updateString:Ljava/lang/String;
    const-string v5, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    .line 158
    .local v2, item:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    const/4 v5, 0x1

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 159
    const/4 v5, 0x2

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 160
    const/4 v5, 0x3

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 161
    const/4 v5, 0x4

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 162
    const/4 v5, 0x5

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 163
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    .end local v4           #updateString:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 165
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #updateString:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 169
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 171
    return-void
.end method

.method public moveItemInContextualPageDatabase(ZJZ)V
    .locals 7
    .parameter "isToCP"
    .parameter "itemID"
    .parameter "isFolderItem"

    .prologue
    .line 1958
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1960
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1961
    const/4 v2, 0x0

    .line 1962
    .local v2, sql:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1964
    .local v3, sqlCondition:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 1965
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " WHERE container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1970
    :goto_0
    if-eqz p1, :cond_1

    .line 1971
    const-string v2, "INSERT INTO favorites_cp SELECT * FROM favorites"

    .line 1975
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1977
    if-eqz p1, :cond_2

    .line 1978
    const-string v2, "DELETE FROM favorites"

    .line 1982
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1984
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1989
    .end local v2           #sql:Ljava/lang/String;
    .end local v3           #sqlCondition:Ljava/lang/String;
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1991
    return-void

    .line 1967
    .restart local v2       #sql:Ljava/lang/String;
    .restart local v3       #sqlCondition:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " WHERE _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1973
    :cond_1
    const-string v2, "INSERT INTO favorites SELECT * FROM favorites_cp"

    goto :goto_1

    .line 1980
    :cond_2
    const-string v2, "DELETE FROM favorites_cp"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1986
    .end local v2           #sql:Ljava/lang/String;
    .end local v3           #sqlCondition:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1987
    .local v1, e:Landroid/database/SQLException;
    :try_start_2
    const-string v4, "moveFolderItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1989
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 138
    new-instance v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    .local v8, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 140
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 143
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 144
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 146
    return-object v9
.end method

.method switchFavoritesMode(I)Z
    .locals 1
    .parameter "easyModeSwitch"

    .prologue
    .line 1953
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->switchFavoritesIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 345
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 347
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 348
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, count:I
    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 351
    :cond_0
    return v1
.end method

.method public updateAppItems(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 175
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 176
    .local v4, insertFolder:Landroid/database/sqlite/SQLiteStatement;
    const/4 v7, 0x0

    .line 177
    .local v7, updateFolder:Landroid/database/sqlite/SQLiteStatement;
    const/4 v8, 0x0

    .line 178
    .local v8, updateTitle:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 179
    .local v3, insertApp:Landroid/database/sqlite/SQLiteStatement;
    const/4 v6, 0x0

    .line 180
    .local v6, updateApp:Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 182
    .local v1, deleteItem:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    .line 184
    .local v5, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    if-nez v4, :cond_1

    .line 187
    const-string v9, "INSERT into appOrder (_id,screen,cell,title) values(?,?,?,?)"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 188
    :cond_1
    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v4, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 189
    const/4 v9, 0x2

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v10, v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 190
    const/4 v9, 0x3

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v10, v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 191
    iget-object v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 192
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 195
    :goto_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 196
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_0

    .line 197
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder insert folder: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 272
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_2

    .line 273
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 274
    :cond_2
    if-eqz v7, :cond_3

    .line 275
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 276
    :cond_3
    if-eqz v8, :cond_4

    .line 277
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 278
    :cond_4
    if-eqz v3, :cond_5

    .line 279
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 280
    :cond_5
    if-eqz v6, :cond_6

    .line 281
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 282
    :cond_6
    if-eqz v1, :cond_7

    .line 283
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 284
    :cond_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 272
    throw v9

    .line 194
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_8
    const/4 v9, 0x4

    :try_start_1
    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 201
    :pswitch_1
    if-nez v7, :cond_9

    .line 202
    const-string v9, "UPDATE appOrder set screen=?,cell=?,title=? where _id=?"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 203
    :cond_9
    const/4 v9, 0x1

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v10, v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 204
    const/4 v9, 0x2

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v10, v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 205
    iget-object v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v9, :cond_a

    .line 206
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 209
    :goto_2
    const/4 v9, 0x4

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 210
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 211
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_0

    .line 212
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder update folder: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    :cond_a
    const/4 v9, 0x3

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2

    .line 216
    :pswitch_2
    if-nez v8, :cond_b

    .line 217
    const-string v9, "UPDATE appOrder set title=? where _id=?"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 218
    :cond_b
    iget-object v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v9, :cond_c

    .line 219
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 222
    :goto_3
    const/4 v9, 0x2

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 223
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 224
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_0

    .line 225
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder update title: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    :cond_c
    const/4 v9, 0x1

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 229
    :pswitch_3
    if-nez v3, :cond_d

    .line 230
    const-string v9, "INSERT into appOrder (_id,folderId,screen,cell,hidden,title,componentName) values(?,?,?,?,?,?,?)"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 231
    :cond_d
    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 232
    const/4 v9, 0x2

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 233
    const/4 v9, 0x3

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 234
    const/4 v9, 0x4

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 235
    const/4 v11, 0x5

    iget-boolean v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    if-eqz v9, :cond_e

    const-wide/16 v9, 0x1

    :goto_4
    invoke-virtual {v3, v11, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 236
    const/4 v9, 0x6

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 237
    const/4 v9, 0x7

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 238
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 239
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_0

    .line 240
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder create app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 235
    :cond_e
    const-wide/16 v9, 0x0

    goto :goto_4

    .line 245
    :pswitch_4
    if-nez v6, :cond_f

    .line 246
    const-string v9, "UPDATE appOrder set folderId=?,screen=?,cell=?,hidden=?,title=? where _id=?"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 247
    :cond_f
    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 248
    const/4 v9, 0x2

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v10, v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 249
    const/4 v9, 0x3

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v10, v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 250
    const/4 v11, 0x4

    iget-boolean v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    if-eqz v9, :cond_10

    const-wide/16 v9, 0x1

    :goto_5
    invoke-virtual {v6, v11, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 251
    const/4 v9, 0x5

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 252
    const/4 v9, 0x6

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 253
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 254
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_0

    .line 255
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder update app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    :cond_10
    const-wide/16 v9, 0x0

    goto :goto_5

    .line 260
    :pswitch_5
    if-nez v1, :cond_11

    .line 261
    const-string v9, "DELETE from appOrder where _id=?"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 262
    :cond_11
    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v1, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 263
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 264
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_0

    .line 265
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder delete item: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    .end local v5           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    if-eqz v4, :cond_13

    .line 273
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 274
    :cond_13
    if-eqz v7, :cond_14

    .line 275
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 276
    :cond_14
    if-eqz v8, :cond_15

    .line 277
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 278
    :cond_15
    if-eqz v3, :cond_16

    .line 279
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 280
    :cond_16
    if-eqz v6, :cond_17

    .line 281
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 282
    :cond_17
    if-eqz v1, :cond_18

    .line 283
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 284
    :cond_18
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    return-void

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
