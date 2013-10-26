.class public Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mIsPrefClick:Z

.field private mIsTablet:Z

.field private mMenuItemCancel:Landroid/view/MenuItem;

.field private mMenuItemOk:Landroid/view/MenuItem;

.field private mOkTextView:Landroid/widget/TextView;

.field private mRemoveButton:Landroid/view/View;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private okDisableOpacity:F

.field private okEnableOpacity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 85
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    .line 86
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isAllDeviceChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private isAllDeviceChecked()Z
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    const/4 v1, 0x0

    .line 279
    :goto_1
    return v1

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isHidingHeaders()Z
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 230
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 231
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 232
    .local v1, prefActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    const/4 v2, 0x1

    .line 235
    .end local v1           #prefActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private reloadWhiteList()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 251
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 252
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 254
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 255
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 257
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private removeSelectedList()V
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 241
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 243
    .local v2, wl:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 239
    .end local v2           #wl:Landroid/net/wifi/WifiApWhiteList;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->reloadWhiteList()V

    .line 247
    return-void
.end method

.method private updateList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    .line 284
    .local v1, whiteList:Landroid/net/wifi/WifiApWhiteList;
    const-string v2, "WifiApAllowedListDelete"

    const-string v3, "WifiApAllowedListDelete updateList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 291
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 293
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 294
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 309
    :cond_1
    return-void

    .line 298
    :cond_2
    const-string v2, "WifiApAllowedListDelete"

    const-string v3, "mDeviceList chek-2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    .line 300
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 302
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v2, :cond_4

    .line 303
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 304
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 305
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 286
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 2
    .parameter "showIcon"

    .prologue
    const/4 v1, 0x0

    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0x10

    const/4 v13, -0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, activity:Landroid/app/Activity;
    const-string v7, "WifiApAllowedListDelete"

    const-string v10, "WifiApAllowedListDelete onActivityCreated"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v10, 0x8

    invoke-virtual {v7, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 107
    const-string v7, "device_list_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 109
    iget-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-eqz v7, :cond_1

    .line 110
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    .line 141
    :goto_1
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-direct {v7, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    .line 142
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0400c6

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 143
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0d06f6

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 144
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 145
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    .line 148
    .local v5, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v5}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 149
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v4, :cond_2

    .line 150
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 151
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 152
    .local v6, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;-><init>(Landroid/content/Context;)V

    .line 153
    .local v2, dev:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v6}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #dev:Landroid/preference/CheckBoxPreference;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v5           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    .end local v6           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_0
    move v7, v9

    .line 98
    goto/16 :goto_0

    .line 112
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "layout_inflater"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 113
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040109

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    .line 114
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0a032e

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    .line 115
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    const v10, 0x7f0a032f

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    .line 116
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    const v10, 0x7f0d0293

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 118
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0a032c

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, deleteButton:Landroid/view/View;
    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/16 v12, 0x15

    invoke-direct {v11, v13, v13, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_1

    .line 169
    .end local v1           #deleteButton:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v5       #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v7, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_4

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 173
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 174
    return-void

    :cond_4
    move v8, v9

    .line 170
    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 198
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 199
    :cond_0
    const-string v0, "WifiApAllowedListDelete"

    const-string v1, "updateList due to onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 201
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->addPreferencesFromResource(I)V

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 178
    const/4 v1, 0x1

    const v2, 0x7f0d0111

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemCancel:Landroid/view/MenuItem;

    .line 179
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemCancel:Landroid/view/MenuItem;

    const v2, 0x7f020088

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 180
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    const/4 v1, 0x2

    const v2, 0x7f0d0293

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    .line 183
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    const v2, 0x7f020089

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 184
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 185
    const-string v1, "WifiApAllowedListDelete"

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 193
    :cond_0
    return-void

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "checked"

    .prologue
    const/4 v3, 0x1

    .line 266
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    if-eqz v2, :cond_1

    .line 271
    .end local p2
    :cond_0
    return v3

    .line 267
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 268
    .local v1, isChecked:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 262
    return-void
.end method
