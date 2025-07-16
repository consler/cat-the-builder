.class public Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;
.super Ljava/lang/Object;
.source "HianalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$HianalyticsRunnable;
    }
.end annotation


# static fields
.field private static final DEAULT_HA_SERVICE_TAG:Ljava/lang/String; = "_default_config_tag"

.field private static final HWID_HA_SERVICE_TAG:Ljava/lang/String; = "hms_hwid"

.field private static final TAG:Ljava/lang/String; = "HianalyticsHelper"

.field private static final TYPE_MAINTF:I = 0x1

.field private static final USER_EXPERIENCE_INVOLVED:Ljava/lang/String; = "user_experience_involved"

.field private static final USER_EXPERIENCE_ON:I = 0x1

.field private static volatile instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;


# instance fields
.field private defaultInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

.field private hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

.field private haTag:Ljava/lang/String;

.field private hasHMSBI:Z

.field private hasHianalytics:Z

.field private isEnablePrivacyPolicy:Z

.field private reportExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 5

    const-string v0, "HianalyticsHelper"

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "hms_hwid"

    .line 57
    iput-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->haTag:Ljava/lang/String;

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    .line 61
    iput-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->defaultInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnablePrivacyPolicy:Z

    const-string v2, "report_ha"

    .line 65
    invoke-static {v2}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->reportExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "_default_config_tag"

    .line 70
    invoke-static {v3}, Lcom/huawei/hianalytics/process/HiAnalyticsManager;->getInitFlag(Ljava/lang/String;)Z

    .line 71
    iput-boolean v2, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v3, "Hianalytics sdk not found"

    .line 73
    invoke-static {v0, v3}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iput-boolean v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    .line 76
    :goto_0
    iget-boolean v3, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    if-nez v3, :cond_0

    .line 77
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->tryHMSBIInit(Landroid/content/Context;)V

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 79
    iget-boolean v4, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    iget-boolean v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "this time the ha %s, mini %s"

    invoke-static {v0, v1, v3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;
    .locals 2

    .line 121
    sget-object v0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    if-nez v0, :cond_1

    .line 122
    const-class v0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    invoke-direct {v1}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;-><init>()V

    sput-object v1, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    .line 126
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 128
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    return-object v0
.end method

.method private isHianalyticsOk()Z
    .locals 4

    const-string v0, "_default_config_tag"

    .line 195
    invoke-static {v0}, Lcom/huawei/hianalytics/process/HiAnalyticsManager;->getInitFlag(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->defaultInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    if-nez v1, :cond_0

    .line 197
    invoke-static {v0}, Lcom/huawei/hianalytics/process/HiAnalyticsManager;->getInstanceByTag(Ljava/lang/String;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->defaultInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->defaultInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    if-nez v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->haTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hianalytics/process/HiAnalyticsManager;->getInstanceByTag(Ljava/lang/String;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method private onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string v1, "HianalyticsHelper"

    const-string v2, "data = %s"

    .line 267
    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :try_start_0
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "the stats has other error,pls check it"

    .line 279
    invoke-static {v1, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string p1, "may be you need upgrade stats sdk"

    .line 277
    invoke-static {v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryHMSBIInit(Landroid/content/Context;)V
    .locals 1

    const-string v0, "HianalyticsHelper"

    if-nez p1, :cond_0

    const-string p1, "the appContext hasn\'t init"

    .line 84
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSBIInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->initBI()V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "the hms base has other error!"

    .line 93
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string p1, "maybe you need add base sdk!"

    .line 91
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public enablePrivacyPolicy(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnablePrivacyPolicy:Z

    return-void
.end method

.method public executeReportHa(Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;Ljava/lang/String;)V
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getReportExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$HianalyticsRunnable;

    invoke-direct {v1, p1, p2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$HianalyticsRunnable;-><init>(Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getReportExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->reportExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public isEnableReport(Landroid/content/Context;)Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnableReportNoSeed(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isEnableReportNoSeed(Landroid/content/Context;)Z
    .locals 5

    .line 157
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    const/4 v2, 0x0

    const-string v3, "HianalyticsHelper"

    if-nez v0, :cond_1

    const-string p1, "Hianalytics sdk need to be initialized"

    .line 161
    invoke-static {v3, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "HianalyticsHelper context can\'t be null"

    .line 165
    invoke-static {v3, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 171
    :cond_2
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnablePrivacyPolicy:Z

    if-eqz v0, :cond_3

    .line 172
    invoke-direct {p0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isHianalyticsOk()Z

    move-result p1

    return p1

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_0
    const-string v0, "user_experience_involved"

    const/4 v4, -0x1

    .line 177
    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 178
    invoke-direct {p0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isHianalyticsOk()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const-string p1, "the setting has other error"

    .line 184
    invoke-static {v3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string p1, "the setting has illegalStateException"

    .line 182
    invoke-static {v3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    const-string p1, "user experience involved needs to be opened"

    .line 187
    invoke-static {v3, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method public onEvent(Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url_request"

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;I)V

    return-void
.end method

.method public onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z

    const/4 v1, 0x0

    const-string v2, "HianalyticsHelper"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    .line 224
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "the base sdk isn\'t exsit, and reportType is %s"

    invoke-static {v2, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 227
    :cond_1
    :goto_0
    iget-boolean p3, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    if-nez p3, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string v0, "data = %s"

    .line 233
    invoke-static {v2, v0, p3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "_default_config_tag"

    .line 236
    invoke-static {p3}, Lcom/huawei/hianalytics/process/HiAnalyticsManager;->getInitFlag(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->defaultInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    if-eqz p3, :cond_4

    .line 237
    invoke-interface {p3, v3, p2, p1}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_1

    .line 243
    :cond_4
    iget-object p3, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    if-eqz p3, :cond_5

    .line 244
    invoke-interface {p3, v3, p2, p1}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_1

    :cond_5
    const-string p1, "the ha has error,has init but is null!"

    .line 251
    invoke-static {v2, p1}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public reportData(Landroid/content/Context;Ljava/util/LinkedHashMap;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 351
    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnableReportNoSeed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;I)V

    return-void
.end method

.method public reportException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    const-string v0, "HianalyticsHelper"

    .line 306
    invoke-static {}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnableReport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->reportExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;-><init>(Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string p1, "reportException error!"

    .line 338
    invoke-static {v0, p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string p1, "reportException error RejectedExecutionException"

    .line 335
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setHaTag(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->haTag:Ljava/lang/String;

    return-void
.end method
