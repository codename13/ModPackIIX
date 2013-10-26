.class public final enum Lcom/android/launcher2/MenuAppModel;
.super Ljava/lang/Enum;
.source "MenuAppModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppModel$Normalizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/MenuAppModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/MenuAppModel; = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final enum INSTANCE:Lcom/android/launcher2/MenuAppModel; = null

.field public static final MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_INSTALL_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuAppModel"

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private mAppItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/launcher2/LauncherApplication;

.field private mCanUninstallApps:Z

.field private mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

.field private mFoldersAdded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldersRemoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHasHiddenItems:Z

.field private mInEditMode:Z

.field private mIsSafeMode:Z

.field private mMaxItemsPerPage:I

.field private mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendGets:Z

.field private mTopLevelItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    new-instance v2, Lcom/android/launcher2/MenuAppModel;

    const-string v3, "INSTANCE"

    invoke-direct {v2, v3, v1}, Lcom/android/launcher2/MenuAppModel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    .line 39
    new-array v2, v0, [Lcom/android/launcher2/MenuAppModel;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    aput-object v3, v2, v1

    sput-object v2, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    .line 65
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    .line 67
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    .line 774
    new-instance v0, Lcom/android/launcher2/MenuAppModel$1;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 869
    new-instance v0, Lcom/android/launcher2/MenuAppModel$2;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 917
    new-instance v0, Lcom/android/launcher2/MenuAppModel$3;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR:Ljava/util/Comparator;

    return-void

    :cond_0
    move v0, v1

    .line 65
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(JJ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private checkEditMode(Z)V
    .locals 3
    .parameter "requiredState"

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eq v0, p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method requires mInEditMode to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method

.method private static integerCompare(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 749
    .local v0, ret:I
    if-le p0, p1, :cond_1

    .line 750
    const/4 v0, 0x1

    .line 754
    :cond_0
    :goto_0
    return v0

    .line 751
    :cond_1
    if-ge p0, p1, :cond_0

    .line 752
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static longCompare(JJ)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 758
    const/4 v0, 0x0

    .line 760
    .local v0, ret:I
    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    .line 761
    const/4 v0, 0x1

    .line 765
    :cond_0
    :goto_0
    return v0

    .line 762
    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    .line 763
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private normalizeModel(Z)V
    .locals 3
    .parameter "keepEmptyPages"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    .line 621
    :cond_0
    sget-boolean v0, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 622
    const-string v1, "MenuAppModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalizeModel. Normalizer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_1
    return-void

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private setModelFlags()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 688
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    .line 689
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    .line 690
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 691
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v2, :cond_3

    .line 692
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    .line 698
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    if-eqz v2, :cond_0

    .line 701
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_2
    return-void

    .line 694
    .restart local v1       #item:Lcom/android/launcher2/AppItem;
    :cond_3
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    .line 695
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuAppModel;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/android/launcher2/MenuAppModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/MenuAppModel;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, [Lcom/android/launcher2/MenuAppModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method


# virtual methods
.method appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, added:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .local p2, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v6, 0x1

    .line 134
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_9

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, invalidate:Z
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 137
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 138
    .local v2, item:Lcom/android/launcher2/AppItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v3, :cond_1

    .line 140
    const/4 v1, 0x1

    .line 141
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->destroy()V

    goto :goto_0

    .line 144
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    .line 146
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 148
    .restart local v2       #item:Lcom/android/launcher2/AppItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v3, :cond_5

    .line 150
    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_1

    .line 154
    :cond_5
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_6

    .line 155
    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    .line 157
    :cond_6
    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_7

    .line 158
    const/4 v1, 0x1

    .line 160
    :cond_7
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v3, :cond_4

    .line 161
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_1

    .line 165
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_8
    if-eqz v1, :cond_9

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 168
    .end local v1           #invalidate:Z
    :cond_9
    return-void
.end method

.method public canUninstallApps()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeFolderName(Lcom/android/launcher2/AppFolderItem;)V
    .locals 6
    .parameter "folder"

    .prologue
    .line 191
    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 192
    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 193
    .local v1, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 194
    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 195
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 200
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .end local v1           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_0
    return-void
.end method

.method public editAddFolder()Lcom/android/launcher2/AppFolderItem;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 219
    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 220
    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    .line 221
    .local v0, newFolder:Lcom/android/launcher2/AppFolderItem;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 222
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 223
    iput-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 224
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editBegin()V

    .line 225
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 230
    return-object v0
.end method

.method public editBegin()V
    .locals 3

    .prologue
    .line 238
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-nez v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 241
    .local v1, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_0

    .line 243
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 245
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 247
    :cond_2
    return-void
.end method

.method public editCommit()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 262
    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v5, :cond_c

    .line 263
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v5, :cond_b

    .line 267
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    .line 268
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    .line 269
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 270
    .local v2, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editCommit()V

    .line 271
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v5, :cond_1

    .line 272
    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_0

    .line 274
    :cond_1
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_0

    .line 275
    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0

    .line 278
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 283
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v4, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 288
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 289
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 290
    .local v3, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iput v7, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 291
    iget-wide v5, v0, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 292
    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 293
    iget v5, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 294
    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 295
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iput-boolean v7, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    goto :goto_1

    .line 298
    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    .end local v3           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_3
    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    .line 301
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 302
    .restart local v2       #item:Lcom/android/launcher2/AppItem;
    iget-boolean v5, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    if-eqz v5, :cond_5

    .line 303
    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 304
    .restart local v3       #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_6

    .line 305
    iput v8, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 312
    :goto_3
    iget-wide v5, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 313
    iget v5, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 314
    iget v5, v2, Lcom/android/launcher2/AppItem;->mCell:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 315
    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 316
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iput-boolean v7, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    goto :goto_2

    .line 308
    :cond_6
    const/4 v5, 0x4

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 309
    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_7

    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v5, v5, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_4
    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 310
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_3

    .line 309
    :cond_7
    const-wide/16 v5, -0x1

    goto :goto_4

    .line 322
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    .end local v3           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v5, :cond_a

    .line 323
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 324
    .restart local v0       #folder:Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 325
    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 326
    .restart local v3       #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x5

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 327
    iget-wide v5, v0, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 328
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 330
    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    .end local v3           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_9
    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    .line 332
    :cond_a
    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 333
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 334
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5, v4}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 337
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    :cond_b
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 339
    :cond_c
    return-void
.end method

.method public editInsertItemOnNewScreen(Lcom/android/launcher2/AppItem;I)V
    .locals 3
    .parameter "movedItem"
    .parameter "newScreenPos"

    .prologue
    .line 346
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 347
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 349
    iput p2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 350
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 351
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 352
    .local v1, item:Lcom/android/launcher2/AppItem;
    if-eq v1, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-lt v2, p2, :cond_0

    .line 353
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_0

    .line 355
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 357
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public editIsDirty()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 365
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 366
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 368
    .local v2, rc:Z
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 369
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 370
    .local v1, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->editIsDirty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    const/4 v2, 0x1

    .line 376
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    return v2

    .line 366
    .end local v2           #rc:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public editRemoveFolder()V
    .locals 4

    .prologue
    .line 394
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 396
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 398
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown folder or folder already removed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 411
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 413
    return-void

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-nez v1, :cond_3

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editDestroy()V

    goto :goto_0
.end method

.method public editRevert()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 419
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v3, :cond_6

    .line 420
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 421
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 423
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 424
    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_0
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    .line 426
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 427
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 428
    .restart local v0       #folder:Lcom/android/launcher2/AppFolderItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 429
    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_2
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    .line 431
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 432
    .local v2, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editRevert()V

    goto :goto_2

    .line 434
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_4
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 435
    invoke-direct {p0, v7}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 437
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 439
    :cond_6
    return-void
.end method

.method public findItemById(J)Lcom/android/launcher2/AppItem;
    .locals 3
    .parameter "id"

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, item:Lcom/android/launcher2/AppItem;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/android/launcher2/AppItem;
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 453
    .restart local v0       #item:Lcom/android/launcher2/AppItem;
    :cond_0
    return-object v0
.end method

.method public getCurrentComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0
.end method

.method public getFolderToDelete()Lcom/android/launcher2/AppFolderItem;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    return-object v0
.end method

.method public getHiddenApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, hiddenItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #hiddenItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .restart local v0       #hiddenItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 489
    .local v2, item:Lcom/android/launcher2/AppItem;
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v3, :cond_0

    .line 490
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 493
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-interface {v3, v0, v4, v4}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    .line 495
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    sget-boolean v3, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 496
    const-string v4, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHiddenApps. count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_4

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_3
    return-object v0

    .line 496
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1
.end method

.method public getTopLevelItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, returnList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v1, :cond_0

    .line 520
    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 524
    :cond_1
    return-object v0
.end method

.method public getUninstallableApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    const/4 v2, 0x0

    .line 538
    .local v2, uninstallApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 539
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #uninstallApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .restart local v2       #uninstallApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 541
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v3, :cond_0

    .line 542
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v3, :cond_0

    .line 543
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 547
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 549
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    sget-boolean v3, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 550
    const-string v4, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUninstallableApps. count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_5

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_4
    return-object v2

    .line 550
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1
.end method

.method public hasHiddenApps()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateTopLevelItems()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    .line 572
    return-void
.end method

.method normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter "keepEmptyPages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, appItemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    .local p2, normalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;,"Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    .local v2, topItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 596
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_1

    .line 597
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    .end local v1           #item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p2}, Lcom/android/launcher2/AppFolderItem;->normalize(Lcom/android/launcher2/MenuAppModel$Normalizer;)V

    goto :goto_0

    .line 599
    .restart local v1       #item:Lcom/android/launcher2/AppItem;
    :cond_1
    iget-object v3, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v3, :cond_0

    .line 603
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v3, :cond_0

    .line 604
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    iget v3, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    invoke-interface {p2, v2, v3, p3}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    .line 608
    return-object v2
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    .line 632
    return-void
.end method

.method onModelRefreshed()V
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 643
    return-void
.end method

.method public releaseShadows()V
    .locals 3

    .prologue
    .line 649
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 651
    .local v1, item:Lcom/android/launcher2/AppItem;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 654
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    return-void
.end method

.method public setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 664
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 665
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 666
    return-void
.end method

.method public setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    .line 677
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 678
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0a0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    .line 681
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    .line 682
    return-void
.end method

.method public setModelItems(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, allApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    const/4 v1, 0x0

    .line 715
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    .line 716
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    .line 717
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    .line 718
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 722
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    .line 723
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v0, :cond_0

    .line 724
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 725
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 727
    :cond_0
    return-void
.end method

.method public setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V
    .locals 1
    .parameter
    .parameter "maxItemsPerScreen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, normalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;,"Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    if-eq p2, v0, :cond_1

    .line 740
    :cond_0
    iput p2, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    .line 741
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 742
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 744
    :cond_1
    return-void
.end method
