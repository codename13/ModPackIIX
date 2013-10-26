.class public Lcom/android/systemui/statusbar/policy/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;,
        Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.ToggleSlider"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

.field private mSlider:Landroid/widget/SeekBar;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    new-instance v5, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    .line 90
    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_2

    .line 91
    const v5, 0x7f030034

    invoke-static {p1, v5, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 98
    .local v3, res:Landroid/content/res/Resources;
    sget-object v5, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, a:Landroid/content/res/TypedArray;
    const v5, 0x7f0f00a9

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CompoundButton;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    .line 102
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v5, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v6, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 121
    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-nez v5, :cond_0

    .line 122
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const v6, 0x7f0200e9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_0
    const v5, 0x7f0f00aa

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    .line 125
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 127
    const v5, 0x7f0f00ab

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 128
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_1

    .line 139
    new-instance v4, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    .line 140
    .local v4, touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    const v5, 0x7f0f00e7

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 141
    .local v1, autoBrightnessGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    .end local v1           #autoBrightnessGroup:Landroid/view/ViewGroup;
    .end local v4           #touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    return-void

    .line 93
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_2
    const v5, 0x7f03001f

    invoke-static {p1, v5, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 144
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #autoBrightnessGroup:Landroid/view/ViewGroup;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->changedFont()V

    return-void
.end method

.method private changedFont()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method


# virtual methods
.method public hideToggle()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "toggle"
    .parameter "checked"

    .prologue
    .line 154
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-nez v3, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 159
    const v3, 0x108061e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 160
    .local v2, thumb:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f0200e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    .local v1, slider:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, p0, v4, p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 178
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #slider:Landroid/graphics/drawable/Drawable;
    .end local v2           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-void

    .line 162
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_1
    const v3, 0x1080622

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 163
    .restart local v2       #thumb:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080624

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #slider:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 173
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #slider:Landroid/graphics/drawable/Drawable;
    .end local v2           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, p0, v4, p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_1

    .line 183
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 185
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 195
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 204
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 208
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 215
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 223
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 231
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    .line 219
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 235
    return-void
.end method

.method public showToggle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    return-void
.end method
