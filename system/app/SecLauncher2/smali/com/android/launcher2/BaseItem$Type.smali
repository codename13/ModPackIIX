.class public final enum Lcom/android/launcher2/BaseItem$Type;
.super Ljava/lang/Enum;
.source "BaseItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/BaseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/BaseItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/BaseItem$Type;

.field public static final enum HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

.field public static final enum HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

.field public static final enum HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

.field public static final enum HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

.field public static final enum HOME_UNKNOWN:Lcom/android/launcher2/BaseItem$Type;

.field public static final enum HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

.field public static final enum MENU_APP:Lcom/android/launcher2/BaseItem$Type;

.field public static final enum MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/android/launcher2/BaseItem$Type;

    const-string v1, "HOME_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/launcher2/BaseItem$Type;

    .line 37
    new-instance v0, Lcom/android/launcher2/BaseItem$Type;

    const-string v1, "HOME_APPLICATION"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    .line 38
    new-instance v0, Lcom/android/launcher2/BaseItem$Type;

    const-string v1, "HOME_SHORTCUT"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    .line 39
    new-instance v0, Lcom/android/launcher2/BaseItem$Type;

    const-string v1, "HOME_FOLDER"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    .line 40
    new-instance v0, Lcom/android/launcher2/BaseItem$Type;

    const-string v1, "HOME_WIDGET"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    .line 41
    new-instance v0, Lcom/android/launcher2/BaseItem$Type;

    const-string v1, "HOME_SAMSUNG_WIDGET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    .line 42
    new-instance v0, Lcom/android/launcher2/BaseItem$Type;

    const-string v1, "MENU_APP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    .line 43
    new-instance v0, Lcom/android/launcher2/BaseItem$Type;

    const-string v1, "MENU_FOLDER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/BaseItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/launcher2/BaseItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/BaseItem$Type;->$VALUES:[Lcom/android/launcher2/BaseItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/BaseItem$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/android/launcher2/BaseItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/BaseItem$Type;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->$VALUES:[Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v0}, [Lcom/android/launcher2/BaseItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/BaseItem$Type;

    return-object v0
.end method
