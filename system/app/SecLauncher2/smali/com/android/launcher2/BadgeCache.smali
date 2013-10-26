.class public Lcom/android/launcher2/BadgeCache;
.super Ljava/lang/Object;
.source "BadgeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/BadgeCache$BadgeCount;
    }
.end annotation


# static fields
.field private static final BADGE_COLUMNS:[Ljava/lang/String; = null

.field public static final BADGE_URI:Landroid/net/Uri; = null

.field private static final INITIAL_BADGE_CAPACITY:I = 0x14


# instance fields
.field private final mApp:Landroid/app/Application;

.field private final mBadges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/BadgeCache$BadgeCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "class"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "badgecount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/BadgeCache;->BADGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/HashMap;

    .line 62
    iput-object p1, p0, Lcom/android/launcher2/BadgeCache;->mApp:Landroid/app/Application;

    .line 63
    return-void
.end method


# virtual methods
.method getBadgeCount(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "component"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, count:I
    iget-object v2, p0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BadgeCache$BadgeCount;

    .line 74
    .local v1, value:Lcom/android/launcher2/BadgeCache$BadgeCount;
    if-eqz v1, :cond_0

    .line 75
    iget v0, v1, Lcom/android/launcher2/BadgeCache$BadgeCount;->mCount:I

    .line 77
    :cond_0
    return v0
.end method

.method updateBadgeCounts()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/BadgeCache$BadgeCount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    .local v7, badges:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher2/BadgeCache$BadgeCount;>;"
    iget-object v0, p0, Lcom/android/launcher2/BadgeCache;->mApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher2/BadgeCache;->BADGE_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 88
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BadgeCache$BadgeCount;

    .line 92
    .local v6, badgeCount:Lcom/android/launcher2/BadgeCache$BadgeCount;
    iput v13, v6, Lcom/android/launcher2/BadgeCache$BadgeCount;->mCount:I

    goto :goto_0

    .line 96
    .end local v6           #badgeCount:Lcom/android/launcher2/BadgeCache$BadgeCount;
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, pkgName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, className:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 100
    .local v6, badgeCount:I
    if-eqz v12, :cond_0

    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    .line 101
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v12, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v10, cn:Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher2/BadgeCache$BadgeCount;

    invoke-direct {v1, v6}, Lcom/android/launcher2/BadgeCache$BadgeCount;-><init>(I)V

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    .end local v6           #badgeCount:I
    .end local v9           #className:Ljava/lang/String;
    .end local v10           #cn:Landroid/content/ComponentName;
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 106
    iget-object v0, p0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 108
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_2
    return-object v7
.end method
