.class public Lorg/catrobat/catroid/CatroidApplication;
.super Landroid/app/Application;
.source "CatroidApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field public static defaultSystemLanguage:Ljava/lang/String;

.field private static googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private static googleTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/catrobat/catroid/CatroidApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/CatroidApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 107
    sget-object v0, Lorg/catrobat/catroid/CatroidApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method private setupHuaweiMobileServices()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/huawei/agconnect/AGConnectInstance;->getInstance()Lcom/huawei/agconnect/AGConnectInstance;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/huawei/agconnect/AGConnectInstance;->initialize(Landroid/content/Context;)V

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v0

    const-string v1, "client/api_key"

    invoke-virtual {v0, v1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "apiKey":Ljava/lang/String;
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .line 94
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 95
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public declared-synchronized getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    sget-object v0, Lorg/catrobat/catroid/CatroidApplication;->googleTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lorg/catrobat/catroid/CatroidApplication;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const v1, 0x7f150006

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/CatroidApplication;->googleTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 103
    .end local p0    # "this":Lorg/catrobat/catroid/CatroidApplication;
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/CatroidApplication;->googleTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 59
    sget-object v0, Lorg/catrobat/catroid/CatroidApplication;->TAG:Ljava/lang/String;

    const-string v1, "CatroidApplication onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lorg/catrobat/catroid/CatroidApplication;->TAG:Ljava/lang/String;

    const-string v1, "git commit info: branch  @"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-boolean v0, Lorg/catrobat/catroid/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 63
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 64
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectNonSdkApiUsage()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/CatroidApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/CatroidApplication;->context:Landroid/content/Context;

    .line 71
    invoke-static {}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->getMyModules()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/catrobat/catroid/koin/CatroidKoinHelperKt;->start(Landroid/app/Application;Ljava/util/List;)V

    .line 73
    invoke-static {p0}, Lorg/catrobat/catroid/utils/Utils;->fetchSpeechRecognitionSupportedLanguages(Landroid/content/Context;)V

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/CatroidApplication;->defaultSystemLanguage:Ljava/lang/String;

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/CatroidApplication;->googleAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 78
    sget-boolean v1, Lorg/catrobat/catroid/BuildConfig;->DEBUG:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    .line 80
    invoke-direct {p0}, Lorg/catrobat/catroid/CatroidApplication;->setupHuaweiMobileServices()V

    .line 81
    return-void
.end method
