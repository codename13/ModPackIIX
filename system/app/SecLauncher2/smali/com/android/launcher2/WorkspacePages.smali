.class Lcom/android/launcher2/WorkspacePages;
.super Ljava/lang/Object;
.source "WorkspacePages.java"


# static fields
.field private static final PREFERENCES_EMPTYPAGES:Ljava/lang/String; = "emptypages"

.field private static mPages:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPageAt(ILandroid/content/Context;)Z
    .locals 5
    .parameter "page"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 80
    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p0, v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 84
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v0, -0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_2
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v1, v2, p0

    .line 87
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    .line 88
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static deletePageAt(ILandroid/content/Context;)Z
    .locals 5
    .parameter "page"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 99
    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p0, v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 103
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v3, v0, -0x1

    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v4, v4, v0

    aput-boolean v4, v2, v3

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_2
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput-boolean v1, v2, v3

    .line 106
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    .line 107
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static itemAddedToPage(ILandroid/content/Context;)Z
    .locals 2
    .parameter "page"
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 146
    if-ltz p0, :cond_0

    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v1, v1

    if-lt p0, v1, :cond_2

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 154
    :cond_1
    :goto_0
    return v0

    .line 149
    :cond_2
    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v1, v1, p0

    if-nez v1, :cond_1

    .line 150
    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v0, v1, p0

    .line 152
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static movePage(IILandroid/content/Context;)Z
    .locals 5
    .parameter "from"
    .parameter "to"
    .parameter "context"

    .prologue
    .line 118
    invoke-static {p2}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 119
    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-ge p0, v2, :cond_0

    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 120
    :cond_0
    const/4 v2, 0x0

    .line 135
    :goto_0
    return v2

    .line 122
    :cond_1
    if-eq p0, p1, :cond_4

    .line 123
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v0, v2, p0

    .line 124
    .local v0, fromValue:Z
    if-ge p0, p1, :cond_2

    .line 125
    move v1, p0

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 126
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v1, 0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v1           #i:I
    :cond_2
    move v1, p0

    .restart local v1       #i:I
    :goto_2
    if-le v1, p1, :cond_3

    .line 129
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v1, -0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v1

    .line 128
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 131
    :cond_3
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v0, v2, p1

    .line 133
    invoke-static {p2}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    .line 135
    .end local v0           #fromValue:Z
    .end local v1           #i:I
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z
    .locals 1
    .parameter "page"
    .parameter "context"

    .prologue
    .line 164
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 165
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readPreferences(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 40
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    if-eqz v3, :cond_1

    .line 56
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    new-array v3, v3, [Z

    sput-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 46
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v4, v3, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "emptypages"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v5, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 52
    .local v1, len:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 53
    sget-object v5, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x74

    if-ne v3, v6, :cond_3

    const/4 v3, 0x1

    :goto_2
    aput-boolean v3, v5, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    move v0, v1

    :goto_3
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 55
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v4, v3, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static writePreferences(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 66
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    const/16 v3, 0x74

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/16 v3, 0x66

    goto :goto_1

    .line 67
    :cond_1
    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 68
    .local v1, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v3, "emptypages"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method
