.class public Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;,
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;
    }
.end annotation


# static fields
.field static final sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

.field static final sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

.field public static final sPathsExcludedForMisc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowFormat:Z

.field private mColors:[I

.field mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mFormatPreference:Landroid/preference/Preference;

.field private mIsUSBOTGStorage:Z

.field private mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mPreferences:[Landroid/preference/Preference;

.field private mResources:Landroid/content/res/Resources;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0d0442

    invoke-direct {v1, v2, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0d0444

    const v3, 0x7f0c0004

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0d0447

    const v3, 0x7f0c0006

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0d0448

    const v3, 0x7f0c0007

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0d0446

    const v3, 0x7f0c0005

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0d0449

    const v4, 0x7f0c0008

    invoke-direct {v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0d0441

    const v4, 0x7f0c0003

    invoke-direct {v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    .line 126
    new-array v0, v6, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-array v2, v8, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {v1, v6, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v3, v2, v6

    sget-object v3, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v3, v2, v8

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-direct {v1, v8, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    .line 136
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V
    .locals 6
    .parameter "context"
    .parameter "resources"
    .parameter "storageVolume"
    .parameter "storageManager"
    .parameter "isPrimary"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 77
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    .line 83
    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 149
    new-instance v3, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 179
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 180
    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 181
    iput-object p4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 182
    if-eqz p3, :cond_4

    .line 184
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subsystem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, subsystem:Ljava/lang/String;
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    .line 187
    if-eqz v0, :cond_0

    .line 188
    const-string v3, "sd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    const v3, 0x7f0d0052

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    .line 204
    .end local v0           #subsystem:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p1, p3, p5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 205
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v3, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 208
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    .line 214
    return-void

    .line 190
    .restart local v0       #subsystem:Ljava/lang/String;
    :cond_1
    const-string v3, "fuse"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    const v3, 0x7f0d043f

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    goto :goto_0

    .line 192
    :cond_2
    const-string v3, "usb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    .line 194
    const v3, 0x7f0d09c0

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    .end local v0           #subsystem:Ljava/lang/String;
    :cond_4
    const v3, 0x7f0d053d

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 208
    goto :goto_1
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 487
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 488
    .local v0, shape:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 489
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 490
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 466
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 467
    return-void
.end method

.method private resetPreferences()V
    .locals 4

    .prologue
    .line 280
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "StorageVolumePreferenceCategory"

    const-string v3, "resetPreferences() : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    sget-object v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v1, v2

    .line 283
    .local v1, numberOfCategories:I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 293
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 294
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 297
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_4

    .line 298
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 302
    return-void
.end method

.method private updatePreference(JJI)V
    .locals 3
    .parameter "size"
    .parameter "totalSize"
    .parameter "category"

    .prologue
    .line 456
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v2, v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 12

    .prologue
    const v11, 0x7f0d09c4

    const/4 v10, 0x1

    const v9, 0x7f0d044d

    const/4 v8, 0x6

    const/4 v7, 0x0

    .line 305
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    .line 307
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, state:Ljava/lang/String;
    :goto_0
    sget-boolean v4, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePreferencesFromState() : state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    const-string v1, ""

    .line 312
    .local v1, readOnly:Ljava/lang/String;
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    const-string v2, "mounted"

    .line 314
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d0451

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 316
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "unmounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 324
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    :cond_3
    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 328
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v4, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    sget-boolean v4, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "StorageVolumePreferenceCategory"

    const-string v5, "updatePreferencesFromState() : Environment.MEDIA_MOUNTED. mMountTogglePreference enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 332
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    if-eqz v4, :cond_9

    .line 333
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d09c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d09c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    :goto_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v4, :cond_5

    .line 342
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, subsystem:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 344
    const-string v4, "fuse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 345
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    .end local v3           #subsystem:Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 402
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 403
    sget-boolean v4, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "StorageVolumePreferenceCategory"

    const-string v5, "updatePreferencesFromState() : mMountTogglePreference != null && !edm.getRestrictionPolicy().isSdCardEnabled(), mMountTogglePreference disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_6
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 407
    :cond_7
    return-void

    .line 307
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v1           #readOnly:Ljava/lang/String;
    .end local v2           #state:Ljava/lang/String;
    :cond_8
    const-string v2, "mounted"

    goto/16 :goto_0

    .line 336
    .restart local v1       #readOnly:Ljava/lang/String;
    .restart local v2       #state:Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d044a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d044b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 353
    :cond_a
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 354
    new-instance v4, Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 357
    :cond_b
    const-string v4, "unmounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "nofs"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "unmountable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 359
    :cond_c
    sget-boolean v4, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v4, :cond_d

    const-string v4, "StorageVolumePreferenceCategory"

    const-string v5, "updatePreferencesFromState() : mMountTogglePreference enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_d
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 362
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    if-eqz v4, :cond_e

    .line 363
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d09c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    :goto_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 394
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v4, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v4, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_5

    .line 397
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 366
    :cond_e
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d044e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 371
    :cond_f
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "checking"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 374
    sget-boolean v4, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v4, :cond_10

    const-string v4, "StorageVolumePreferenceCategory"

    const-string v5, "updatePreferencesFromState() : DirEncryptionManager.isEncryptionFeatureEnabled() && Environment.MEDIA_CHECKING && mDem.getSDCardEncryptionPrefs() != null, mMountTogglePreference disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_10
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 376
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d0871

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 379
    :cond_11
    sget-boolean v4, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v4, :cond_12

    const-string v4, "StorageVolumePreferenceCategory"

    const-string v5, "updatePreferencesFromState() : mMountTogglePreference disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_12
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 382
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    if-eqz v4, :cond_13

    .line 383
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d09c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 386
    :cond_13
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d044c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public getIsUSBOTGStorage()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    return v0
.end method

.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 9

    .prologue
    .line 217
    new-instance v6, Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 219
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const/high16 v7, 0x7f0e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 220
    .local v5, width:I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0e0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 222
    .local v0, height:I
    sget-object v6, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v2, v6

    .line 223
    .local v2, numberOfCategories:I
    new-array v6, v2, [Landroid/preference/Preference;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    .line 224
    new-array v6, v2, [I

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    .line 225
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 226
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 227
    .local v3, preference:Landroid/preference/Preference;
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aput-object v3, v6, v1

    .line 228
    sget-object v6, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mTitle:I

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 229
    const v6, 0x7f0d0443

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 232
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v6, :cond_0

    .line 233
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, subsystem:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 235
    const-string v6, "fuse"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 236
    if-eqz v1, :cond_0

    .line 238
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    sget-object v8, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v6, v1

    .line 239
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v6, v6, v1

    invoke-static {v5, v0, v6}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 225
    .end local v4           #subsystem:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_1
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 249
    iget-boolean v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    if-eqz v6, :cond_3

    .line 250
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v7, 0x7f0d09c1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 251
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v7, 0x7f0d09c2

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 252
    iget-boolean v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    if-eqz v6, :cond_2

    .line 253
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 254
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0d09c6

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 255
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0d09c7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 269
    :cond_2
    :goto_1
    return-void

    .line 258
    :cond_3
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v7, 0x7f0d044a

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 259
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v7, 0x7f0d044b

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 261
    iget-boolean v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    if-eqz v6, :cond_2

    .line 262
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 263
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0d044f

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 264
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0d0450

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 517
    const/4 v0, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 525
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 549
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v1, v1, v3

    if-ne p1, v1, :cond_2

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_3

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_4

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 536
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_5

    .line 537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 541
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 543
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMiscSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 545
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 480
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 484
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 471
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 472
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 476
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 5
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 410
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    sub-long v0, p1, p3

    .line 415
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 416
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v3, v0

    long-to-float v4, p1

    div-float/2addr v3, v4

    const v4, -0x777778

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 417
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 419
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 420
    return-void
.end method

.method public updateApproximate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 501
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 502
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    return-void
.end method

.method public updateExact(JJJJJ[J)V
    .locals 19
    .parameter "totalSize"
    .parameter "availSize"
    .parameter "appsSize"
    .parameter "downloadsSize"
    .parameter "miscSize"
    .parameter "mediaSizes"

    .prologue
    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->isExternalSDCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    sub-long v17, p1, p3

    .line 431
    .local v17, usedSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-wide/from16 v0, v17

    long-to-float v5, v0

    move-wide/from16 v0, p1

    long-to-float v6, v0

    div-float/2addr v5, v6

    const v6, -0x777778

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 434
    .end local v17           #usedSize:J
    :cond_0
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 436
    const-wide/16 v15, 0x0

    .line 437
    .local v15, totalMediaSize:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v2, v2

    if-ge v14, v2, :cond_1

    .line 438
    sget-object v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    aget-object v2, v2, v14

    iget v7, v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mCategory:I

    .line 439
    .local v7, category:I
    aget-wide v3, p11, v14

    .local v3, size:J
    move-object/from16 v2, p0

    move-wide/from16 v5, p1

    .line 440
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 441
    add-long/2addr v15, v3

    .line 437
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 444
    .end local v3           #size:J
    .end local v7           #category:I
    :cond_1
    const/4 v13, 0x4

    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    move-wide/from16 v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 448
    const/4 v13, 0x5

    move-object/from16 v8, p0

    move-wide/from16 v9, p9

    move-wide/from16 v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 450
    const/4 v13, 0x6

    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 453
    return-void
.end method

.method public updateExact(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 508
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    return-void
.end method
