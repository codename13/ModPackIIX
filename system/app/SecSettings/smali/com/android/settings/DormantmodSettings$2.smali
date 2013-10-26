.class Lcom/android/settings/DormantmodSettings$2;
.super Landroid/preference/Preference;
.source "DormantmodSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DormantmodSettings;->initPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DormantmodSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DormantmodSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 183
    const v2, 0x7f0a00d8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 184
    .local v0, mFormBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    #setter for: Lcom/android/settings/DormantmodSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2, v0}, Lcom/android/settings/DormantmodSettings;->access$002(Lcom/android/settings/DormantmodSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 185
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    iget-object v3, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    #getter for: Lcom/android/settings/DormantmodSettings;->mStarthour:I
    invoke-static {v3}, Lcom/android/settings/DormantmodSettings;->access$100(Lcom/android/settings/DormantmodSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    #getter for: Lcom/android/settings/DormantmodSettings;->mStartmin:I
    invoke-static {v4}, Lcom/android/settings/DormantmodSettings;->access$200(Lcom/android/settings/DormantmodSettings;)I

    move-result v4

    #calls: Lcom/android/settings/DormantmodSettings;->setStartTime(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/DormantmodSettings;->access$300(Lcom/android/settings/DormantmodSettings;II)V

    .line 186
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    #getter for: Lcom/android/settings/DormantmodSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/DormantmodSettings;->access$000(Lcom/android/settings/DormantmodSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DormantmodSettings$2$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DormantmodSettings$2$1;-><init>(Lcom/android/settings/DormantmodSettings$2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v2, 0x7f0a00da

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 193
    .local v1, mtoBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    #setter for: Lcom/android/settings/DormantmodSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/settings/DormantmodSettings;->access$502(Lcom/android/settings/DormantmodSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 194
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    iget-object v3, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    #getter for: Lcom/android/settings/DormantmodSettings;->mEndhour:I
    invoke-static {v3}, Lcom/android/settings/DormantmodSettings;->access$600(Lcom/android/settings/DormantmodSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    #getter for: Lcom/android/settings/DormantmodSettings;->mEndmin:I
    invoke-static {v4}, Lcom/android/settings/DormantmodSettings;->access$700(Lcom/android/settings/DormantmodSettings;)I

    move-result v4

    #calls: Lcom/android/settings/DormantmodSettings;->setEndTime(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/DormantmodSettings;->access$800(Lcom/android/settings/DormantmodSettings;II)V

    .line 195
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings$2;->this$0:Lcom/android/settings/DormantmodSettings;

    #getter for: Lcom/android/settings/DormantmodSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/DormantmodSettings;->access$500(Lcom/android/settings/DormantmodSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DormantmodSettings$2$2;

    invoke-direct {v3, p0}, Lcom/android/settings/DormantmodSettings$2$2;-><init>(Lcom/android/settings/DormantmodSettings$2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method
