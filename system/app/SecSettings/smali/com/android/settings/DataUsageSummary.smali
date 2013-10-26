.class public Lcom/android/settings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;,
        Lcom/android/settings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings/DataUsageSummary$AppUsageItem;,
        Lcom/android/settings/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static isVZW:Z

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

.field private mAlertAtWarning:Landroid/widget/CheckBox;

.field private mAlertAtWarningListener:Landroid/view/View$OnClickListener;

.field private mAlertAtWarningView:Landroid/view/View;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppDetailUids:[I

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/settings/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/settings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConfirmAtBoot:Landroid/widget/CheckBox;

.field private mConfirmAtBootListener:Landroid/view/View$OnClickListener;

.field private mConfirmAtBootView:Landroid/view/View;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/CheckBox;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDialog:Landroid/app/DialogFragment;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

.field private mUsageDisclaimer:Landroid/widget/TextView;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1641
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 217
    iput v1, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 255
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 256
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 261
    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppDetailUids:[I

    .line 267
    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 268
    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 279
    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 283
    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    .line 291
    new-instance v0, Lcom/android/settings/DataUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$1;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 735
    new-instance v0, Lcom/android/settings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$4;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 803
    new-instance v0, Lcom/android/settings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$5;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 818
    new-instance v0, Lcom/android/settings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$6;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1248
    new-instance v0, Lcom/android/settings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$7;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1295
    new-instance v0, Lcom/android/settings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$8;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    .line 1309
    new-instance v0, Lcom/android/settings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$9;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1329
    new-instance v0, Lcom/android/settings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$10;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    .line 1348
    new-instance v0, Lcom/android/settings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$11;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1376
    new-instance v0, Lcom/android/settings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$12;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1389
    new-instance v0, Lcom/android/settings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$13;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1399
    new-instance v0, Lcom/android/settings/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$14;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1491
    new-instance v0, Lcom/android/settings/DataUsageSummary$15;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$15;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1522
    new-instance v0, Lcom/android/settings/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$16;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1568
    new-instance v0, Lcom/android/settings/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$17;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2543
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->setDataEnableView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400([II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->contains([II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3502(Lcom/android/settings/DataUsageSummary;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mAppDetailUids:[I

    return-object p1
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$500()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 754
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 758
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 759
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2709
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2710
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2713
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2714
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2715
    const v2, 0x7f0d072f

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2717
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2718
    const v2, 0x7f0d072e

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2720
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2721
    const v0, 0x7f0d072d

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2724
    const v0, 0x7f0d072a

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2726
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2727
    const v0, 0x7f0d072b

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    :cond_4
    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2522
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2523
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2535
    :goto_0
    return-object v0

    .line 2525
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2535
    goto :goto_0

    .line 2527
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2529
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2531
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2533
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static contains([II)Z
    .locals 5
    .parameter "haystack"
    .parameter "needle"

    .prologue
    .line 2771
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 2772
    .local v3, value:I
    if-ne v3, p1, :cond_0

    .line 2773
    const/4 v4, 0x1

    .line 2776
    .end local v3           #value:I
    :goto_1
    return v4

    .line 2771
    .restart local v3       #value:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2776
    .end local v3           #value:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1645
    .line 1646
    if-eqz p5, :cond_0

    const-string v7, "UTC"

    .line 1648
    :goto_0
    sget-object v8, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1649
    :try_start_0
    sget-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1650
    sget-object v1, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1646
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1652
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1563
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1565
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppDetailPrimaryUid()I
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppDetailUids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v0

    .line 1089
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1095
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1090
    :catch_0
    move-exception v0

    .line 1092
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem reading network policy"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1095
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1049
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1050
    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getRestrictBackground()Z
    .locals 4

    .prologue
    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1066
    :goto_0
    return v0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasEthernet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2654
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2656
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 2686
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2617
    const/4 v0, 0x0

    return v0
.end method

.method private static hasMobileRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2607
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2609
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2641
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2643
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2676
    const v0, 0x7f04003e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2678
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2679
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2664
    const v0, 0x7f040094

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2665
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2668
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setDuplicateParentStateEnabled(Z)V

    .line 2670
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2671
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 2738
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2739
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2743
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2744
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2745
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2747
    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2748
    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2749
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppDetailUids:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1041
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1044
    :goto_0
    return v0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1024
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 3

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1549
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1550
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1551
    .local v1, subscriberId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v2, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1553
    .end local v1           #subscriberId:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 1036
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1099
    const-string v0, "DataUsage"

    const-string v1, "setAppRestrictBackground()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v1

    .line 1102
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v1, v0}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1109
    return-void

    .line 1102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to save policy"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setDataEnableView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2793
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2795
    if-eqz v0, :cond_0

    .line 2796
    const-string v0, "DataUsage"

    const-string v1, "AIRPLANE_MODE on! disable mobile data"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2798
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2799
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 2800
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 2813
    :goto_0
    return-void

    .line 2801
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2802
    const-string v0, "DataUsage"

    const-string v1, "AIRPLANE_MODE off! enable mobile data"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 2804
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2805
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2807
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    goto :goto_0

    .line 2809
    :cond_1
    const-string v0, "DataUsage"

    const-string v1, "AIRPLANE_MODE not changed. "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1057
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1058
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1059
    return-void

    .line 1057
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1029
    const-string v0, "DataUsage"

    const-string v1, "setMobileDataEnabled()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1031
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 1032
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1033
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 2
    .parameter "split"

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, subscriberId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1560
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 2
    .parameter

    .prologue
    .line 1008
    const-string v0, "DataUsage"

    const-string v1, "setPolicyLimitBytes()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1010
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1011
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2
    .parameter

    .prologue
    .line 1002
    const-string v0, "DataUsage"

    const-string v1, "setPolicyWarningBytes()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1004
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1005
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2765
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2766
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2767
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2768
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2756
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2757
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2758
    return-void
.end method

.method private setRestrictBackground(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1071
    const-string v0, "DataUsage"

    const-string v1, "setRestrictBackground()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 930
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 931
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 932
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 934
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 935
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 947
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2, v12}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 950
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v6

    .line 951
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v2, v6, v0}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v2

    .line 952
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 954
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 955
    iget-object v7, v2, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 956
    iget-object v7, v2, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 957
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/settings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 956
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 938
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 942
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v12}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 999
    :goto_1
    return-void

    .line 960
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/settings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 965
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 966
    if-eqz v2, :cond_4

    array-length v5, v2

    if-lez v5, :cond_4

    .line 967
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 968
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    aget-object v2, v2, v1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 972
    :goto_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 979
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    .line 981
    invoke-static {v3, v6}, Landroid/net/NetworkPolicyManager;->isUidValidForPolicy(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 984
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0d0735

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 985
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 986
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0d0736

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 993
    :goto_4
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 971
    goto :goto_2

    .line 975
    :cond_4
    iput-object v12, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 976
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 989
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0d0737

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 997
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const v7, 0x7f0d0725

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 836
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 838
    if-nez v1, :cond_1

    .line 839
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 843
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 846
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 847
    :cond_2
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 849
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBody() with currentTab="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 853
    const-string v2, "mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 854
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0d0731

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 855
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v1, v7}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 857
    sget-boolean v1, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v1, :cond_3

    .line 858
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0d0bcb

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 862
    :goto_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const v2, 0x7f0d0bc8

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 865
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 908
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetailUids:[I

    invoke-static {v2, v3}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;[I)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 914
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    .line 860
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0d071e

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_1

    .line 867
    :cond_4
    const-string v2, "3g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 868
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0d0732

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 869
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v1, v7}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 870
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0d0720

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 872
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 874
    :cond_5
    const-string v2, "4g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 875
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0d0733

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 876
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v1, v7}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 877
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0d071f

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 879
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 881
    :cond_6
    const-string v0, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 883
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 889
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 891
    :cond_7
    const-string v0, "ethernet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 893
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 899
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 902
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 14
    .parameter

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000

    const/4 v11, 0x0

    .line 1182
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 1183
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1189
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v0, :cond_8

    .line 1190
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 1191
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 1194
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1195
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 1196
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 1199
    :goto_2
    if-eqz p1, :cond_5

    .line 1201
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 1204
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 1205
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1206
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1210
    const/4 v0, 0x1

    move-wide v4, v2

    .line 1211
    goto :goto_3

    .line 1214
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1217
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    .line 1220
    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 1221
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 1222
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 1224
    goto :goto_5

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v11}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1230
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1231
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v6}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v3

    .line 1232
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 1237
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1238
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1246
    :goto_6
    return-void

    .line 1241
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    .line 1244
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move-wide v7, v2

    goto/16 :goto_2

    :cond_7
    move-wide v9, v7

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v7, v9

    goto/16 :goto_0
.end method

.method private updateDetailData()V
    .locals 15

    .prologue
    .line 1441
    const-string v0, "DataUsage"

    const-string v1, "updateDetailData()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v1

    .line 1444
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v3

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1447
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1449
    const/4 v7, 0x0

    .line 1450
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1453
    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1454
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1455
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 1457
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/PieChartView;->setOriginAngle(I)V

    .line 1459
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->removeAllSlices()V

    .line 1460
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/settings/widget/PieChartView;->addSlice(JI)V

    .line 1461
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/settings/widget/PieChartView;->addSlice(JI)V

    .line 1463
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->generatePath()V

    .line 1465
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1471
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1483
    :goto_0
    if-eqz v7, :cond_2

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1484
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 1485
    const/4 v5, 0x0

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    .line 1487
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const v2, 0x7f0d0748

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1489
    return-void

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v0, :cond_1

    .line 1475
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1479
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1483
    :cond_2
    const-wide/16 v5, 0x0

    goto :goto_1
.end method

.method private updatePolicy(Z)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 1116
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1117
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1126
    :goto_0
    const-string v0, "mobile"

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 1128
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1129
    iput-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 1140
    invoke-direct {p0, v3}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1141
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v3, :cond_6

    iget-wide v5, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1144
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v0, :cond_7

    .line 1145
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    :goto_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    if-eqz v3, :cond_8

    iget-wide v4, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1153
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1154
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 1156
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1169
    :cond_2
    :goto_4
    if-eqz p1, :cond_3

    .line 1171
    invoke-direct {p0, v3}, Lcom/android/settings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1173
    :cond_3
    return-void

    .line 1119
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1120
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1122
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 1142
    goto :goto_1

    .line 1147
    :cond_7
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v1, v2

    .line 1149
    goto :goto_3

    .line 1162
    :cond_9
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_4
.end method

.method private updateTabs()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 769
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 771
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v3

    .line 772
    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->hasMobile4gRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 773
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f0d072e

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 774
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f0d072d

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 778
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 779
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f0d072a

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 781
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 782
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f0d072b

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 785
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 786
    :goto_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_6

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 788
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 790
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    .line 794
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 798
    :cond_3
    return-void

    .line 775
    :cond_4
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 776
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f0d072c

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 785
    goto :goto_1

    .line 786
    :cond_6
    const/16 v1, 0x8

    goto :goto_2

    .line 792
    :cond_7
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public isRoamingArea()Z
    .locals 2

    .prologue
    .line 2783
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2784
    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2786
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, sSalesCode:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    .line 310
    :cond_0
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 312
    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 314
    const-string v1, "netpolicy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "data_usage"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 321
    new-instance v1, Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/INetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    .line 322
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 324
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "show_wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 325
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "show_ethernet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iput-boolean v4, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 330
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 335
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 577
    const/high16 v0, 0x7f11

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 578
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 342
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f040046

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 344
    .local v4, view:Landroid/view/View;
    new-instance v5, Lcom/android/settings/net/UidDetailProvider;

    invoke-direct {v5, v0}, Lcom/android/settings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 346
    const v5, 0x1020012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 347
    const v5, 0x7f0a008b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 348
    const v5, 0x1020013

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabWidget;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 349
    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 353
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v5

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_2

    const/4 v3, 0x1

    .line 355
    .local v3, shouldInset:Z
    :goto_0
    if-eqz v3, :cond_3

    .line 356
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 363
    :goto_1
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-static {p2, v4, v5, v6}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 365
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    .line 366
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 368
    const v5, 0x7f040044

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 369
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 371
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 372
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 374
    iget v5, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    if-lez v5, :cond_0

    .line 376
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-static {v5, v6}, Lcom/android/settings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 377
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 382
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0a0086

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 384
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0a0087

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 386
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    .line 387
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 388
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 389
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 390
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-static {p1, v5, v6}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 391
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 392
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 393
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    .line 397
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 398
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 399
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    invoke-static {p1, v5, v6}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 400
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 401
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 402
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 408
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 409
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 411
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 413
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v5, v6}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 414
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 415
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 416
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    .line 421
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 422
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 423
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 424
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    invoke-static {p1, v5, v6}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    .line 425
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 426
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 427
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    sget-boolean v5, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v5, :cond_1

    .line 429
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0a007d

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 436
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v6, 0x7f0a007e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 437
    new-instance v5, Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {v5, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    .line 438
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 439
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 441
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0a0073

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/ChartDataUsageView;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    .line 442
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/ChartDataUsageView;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 443
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 445
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const-wide v6, 0x18fff00000L

    const-wide v8, 0x1900000000L

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/settings/widget/ChartDataUsageView;->setMaximumSetableValue(JJ)V

    .line 450
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0a007f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 451
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0a0004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 452
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0a0080

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 453
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0a0083

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/PieChartView;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    .line 454
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0a0081

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 455
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0a0082

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 456
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0a0085

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 458
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0a0084

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 459
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 462
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 463
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 465
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 467
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v5, v6}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 468
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 469
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 470
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0a0088

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 475
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0a0089

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mUsageDisclaimer:Landroid/widget/TextView;

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 477
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mUsageDisclaimer:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    :goto_2
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 484
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0a008a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 485
    .local v1, mUpgBtn:Landroid/widget/Button;
    new-instance v5, Lcom/android/settings/DataUsageSummary$2;

    invoke-direct {v5, p0}, Lcom/android/settings/DataUsageSummary$2;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, sSalesCode:Ljava/lang/String;
    const-string v5, "TMB"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 499
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f0a0089

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d071c

    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :goto_3
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 507
    new-instance v5, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    iget v7, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v5, v6, v7}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/settings/net/UidDetailProvider;I)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    .line 508
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 509
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 511
    return-object v4

    .line 353
    .end local v1           #mUpgBtn:Landroid/widget/Button;
    .end local v2           #sSalesCode:Ljava/lang/String;
    .end local v3           #shouldInset:Z
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 359
    .restart local v3       #shouldInset:Z
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    goto/16 :goto_1

    .line 480
    :cond_4
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mUsageDisclaimer:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 501
    .restart local v1       #mUpgBtn:Landroid/widget/Button;
    .restart local v2       #sSalesCode:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0a008a

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 718
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 719
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 702
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 704
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 705
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 706
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 708
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    .line 709
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 710
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 728
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 729
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 641
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v3, v1

    .line 697
    :goto_0
    return v3

    .line 643
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    .line 644
    .local v0, dataRoaming:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 645
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    if-eqz v4, :cond_0

    .line 646
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {v4}, Landroid/app/DialogFragment;->dismiss()V

    .line 648
    :cond_0
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    goto :goto_0

    .end local v0           #dataRoaming:Z
    :cond_1
    move v0, v1

    .line 643
    goto :goto_1

    .line 651
    .restart local v0       #dataRoaming:Z
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->setDataRoaming(Z)V

    goto :goto_0

    .line 656
    .end local v0           #dataRoaming:Z
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 657
    .local v2, restrictBackground:Z
    :goto_2
    if-eqz v2, :cond_7

    .line 658
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 659
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    if-eqz v4, :cond_3

    .line 660
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {v4}, Landroid/app/DialogFragment;->dismiss()V

    .line 662
    :cond_3
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    goto :goto_0

    .end local v2           #restrictBackground:Z
    :cond_4
    move v2, v1

    .line 656
    goto :goto_2

    .line 664
    .restart local v2       #restrictBackground:Z
    :cond_5
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    if-eqz v4, :cond_6

    .line 665
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {v4}, Landroid/app/DialogFragment;->dismiss()V

    .line 667
    :cond_6
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    goto :goto_0

    .line 671
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 676
    .end local v2           #restrictBackground:Z
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_8

    move v1, v3

    .line 677
    .local v1, mobileSplit:Z
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 678
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v4

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 679
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 683
    .end local v1           #mobileSplit:Z
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_9

    move v1, v3

    :cond_9
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 684
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "show_wifi"

    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 685
    iget-boolean v4, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 686
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 690
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_a

    move v1, v3

    :cond_a
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 691
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "show_ethernet"

    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 692
    iget-boolean v4, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 693
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x7f0a0396
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2819
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2820
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 583
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    .line 585
    const v0, 0x7f0a0396

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 586
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v4, :cond_3

    move v0, v1

    :goto_0
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 587
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getDataRoaming()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 589
    const v0, 0x7f0a0397

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 590
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 591
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getRestrictBackground()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v5, "enterprise_policy"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 603
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 604
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 609
    :goto_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_2

    .line 611
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 616
    :cond_2
    const v0, 0x7f0a0398

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 617
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasMobile4gRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    move v0, v1

    :goto_3
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 618
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 620
    const v0, 0x7f0a0399

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 621
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 622
    if-nez v4, :cond_7

    move v0, v1

    :goto_4
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 623
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 629
    :goto_5
    const v0, 0x7f0a039a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 630
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 631
    if-nez v4, :cond_9

    :goto_6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 632
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 637
    :goto_7
    return-void

    :cond_3
    move v0, v2

    .line 586
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 590
    goto/16 :goto_1

    .line 607
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_6
    move v0, v2

    .line 617
    goto :goto_3

    :cond_7
    move v0, v2

    .line 622
    goto :goto_4

    .line 625
    :cond_8
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 626
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    goto :goto_5

    :cond_9
    move v1, v2

    .line 631
    goto :goto_6

    .line 634
    :cond_a
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 635
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    goto :goto_7
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 516
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 520
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 524
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    .line 527
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 531
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_1

    .line 532
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 533
    .local v2, rp:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v2, :cond_1

    .line 534
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 535
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 536
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 537
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 546
    .end local v2           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/settings/DataUsageSummary$3;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$3;-><init>(Lcom/android/settings/DataUsageSummary;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DataUsageSummary$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 567
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->setDataEnableView()V

    .line 569
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 573
    return-void

    .line 539
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    .restart local v2       #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
