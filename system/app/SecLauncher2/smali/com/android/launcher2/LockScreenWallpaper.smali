.class public Lcom/android/launcher2/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;,
        Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# static fields
.field private static final GALLERY:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final LIVE_WALLPAPERS:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field static final MODE_BOTH_WALLPAPER:I = 0x2

.field static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final WALLPAPER_GALLERY:Ljava/lang/String; = "com.sec.android.app.wallpaperchooser"

.field static final WALLPAPER_MODE:Ljava/lang/String; = "SET_WALLPAPER_MODE"


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LockScreenWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 89
    const-string v3, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_0

    .line 92
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 112
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 94
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 96
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v2, intentLiveWallpaperChooser:Landroid/content/Intent;
    const-string v3, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.wallpaper.livepicker"

    const-string v5, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 103
    .end local v2           #intentLiveWallpaperChooser:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_3

    .line 105
    const-string v3, "SET_WALLPAPER_MODE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    :goto_2
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.wallpaperchooser"

    const-string v5, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 107
    :cond_3
    const-string v3, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/launcher2/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "both"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 66
    iput-boolean v6, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 70
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, pickWallpaper:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 74
    new-instance v1, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    .line 75
    .local v1, mAlphaComparator:Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 79
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 80
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    new-instance v3, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 83
    invoke-virtual {p0, v6}, Lcom/android/launcher2/LockScreenWallpaper;->setFinishOnTouchOutside(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->setupAlert()V

    .line 85
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
