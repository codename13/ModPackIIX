.class Lcom/android/settings/EasyModeSettings$1;
.super Landroid/widget/ArrayAdapter;
.source "EasyModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EasyModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EasyModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/EasyModeSettings;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 70
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$1;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0xc5

    const/16 v8, 0x96

    const/16 v7, 0x23

    const/16 v6, 0xd7

    .line 73
    move-object v3, p2

    .line 74
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings$1;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, mContext:Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 77
    .local v2, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f040085

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 79
    .end local v0           #mContext:Landroid/content/Context;
    .end local v2           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f0a0176

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$1;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/EasyModeSettings;->access$000(Lcom/android/settings/EasyModeSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 98
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :goto_0
    return-object v3

    .line 84
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$1;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mModeState:I
    invoke-static {v4}, Lcom/android/settings/EasyModeSettings;->access$100(Lcom/android/settings/EasyModeSettings;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 85
    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$1;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mModeState:I
    invoke-static {v4}, Lcom/android/settings/EasyModeSettings;->access$100(Lcom/android/settings/EasyModeSettings;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 92
    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
