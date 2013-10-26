.class Lcom/android/settings/ApnEditor$2;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    #getter for: Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$000(Lcom/android/settings/ApnEditor;)Landroid/preference/EditTextPreference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 835
    return-void
.end method
