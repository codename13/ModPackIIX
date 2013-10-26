.class public interface abstract Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WorkspaceQuickViewInfoProvider"
.end annotation


# virtual methods
.method public abstract addPage()V
.end method

.method public abstract closeQuickViewWorkspace(Z)V
.end method

.method public abstract closeQuickViewWorkspaceStartAnimation()V
.end method

.method public abstract deletePage(I)V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getDeleteDropLayout()Landroid/view/View;
.end method

.method public abstract getDeleteDropTarget()Lcom/android/launcher2/DeleteDropTarget;
.end method

.method public abstract getPage(I)Lcom/android/launcher2/CellLayout;
.end method

.method public abstract isDeleteWorkScreenPopup()Z
.end method

.method public abstract isIncludeItem(I)Z
.end method

.method public abstract setDarkenViewAlpha(F)V
.end method

.method public abstract setHomeScreenAt(I)V
.end method

.method public abstract showDeleteWorkScreen()V
.end method

.method public abstract updateWallpaperOffsets()V
.end method

.method public abstract wallpaperHack()V
.end method
