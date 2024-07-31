.class public final Lcom/huawei/hianalytics/ab/fg/ab;
.super Ljava/lang/Object;


# static fields
.field private static final ab:[Ljava/lang/String;

.field private static bc:Lcom/huawei/hianalytics/ab/fg/ab;

.field private static final cd:Ljava/lang/Object;


# instance fields
.field private de:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ABTesting"

    const-string v1, "_default_config_tag"

    const-string v2, "_openness_config_tag"

    const-string v3, "_hms_config_tag"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hianalytics/ab/fg/ab;->ab:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hianalytics/ab/fg/ab;->bc:Lcom/huawei/hianalytics/ab/fg/ab;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hianalytics/ab/fg/ab;->cd:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/fg/ab;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/fg/ab;->bc:Lcom/huawei/hianalytics/ab/fg/ab;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/ab;->cd()V

    :cond_0
    sget-object v0, Lcom/huawei/hianalytics/ab/fg/ab;->bc:Lcom/huawei/hianalytics/ab/fg/ab;

    return-object v0
.end method

.method private static declared-synchronized cd()V
    .locals 2

    const-class v0, Lcom/huawei/hianalytics/ab/fg/ab;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hianalytics/ab/fg/ab;->bc:Lcom/huawei/hianalytics/ab/fg/ab;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hianalytics/ab/fg/ab;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/fg/ab;-><init>()V

    sput-object v1, Lcom/huawei/hianalytics/ab/fg/ab;->bc:Lcom/huawei/hianalytics/ab/fg/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public ab(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/huawei/hianalytics/ab/fg/ab;->cd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/ab;->de:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string p1, "HiAnalyticsDataManager"

    const-string v1, "DataManager already initialized."

    invoke-static {p1, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/huawei/hianalytics/ab/fg/ab;->de:Landroid/content/Context;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/ab;->de:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->ab(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->gh(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ab(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/ab;->de:Landroid/content/Context;

    const-string v1, "HiAnalyticsDataManager"

    if-nez v0, :cond_0

    const-string p1, "clearDataByTag() sdk is not init"

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "HiAnalyticsDataManager.clearDataByTag(String appid) is execute."

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/ab;->de:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->cd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bc()V
    .locals 4

    const-string v0, "HiAnalyticsDataManager"

    const-string v1, "clearCachedData() is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/ab;->de:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "clearCachedData() sdk is not init"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "HiAnalyticsDataManager.clearCachedData() is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/ab;->de:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "stat_v2_1"

    invoke-static {v0, v3, v2}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/ab;->de:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "cached_v2_1"

    invoke-static {v0, v2, v1}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public bc(Ljava/lang/String;)V
    .locals 3

    const-string v0, "hmsSdk"

    const-string v1, "HiAnalyticsDataManager.setAppid(String appid) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/ab;->de:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p1, "sdk is not init"

    invoke-static {v0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appID"

    const-string v2, "[a-zA-Z0-9_][a-zA-Z0-9. _-]{0,255}"

    invoke-static {v1, p1, v2, v0}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->hi(Ljava/lang/String;)V

    return-void
.end method
