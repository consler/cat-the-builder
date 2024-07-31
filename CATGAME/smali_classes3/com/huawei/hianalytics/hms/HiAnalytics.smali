.class public abstract Lcom/huawei/hianalytics/hms/HiAnalytics;
.super Ljava/lang/Object;


# static fields
.field private static defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCachedData()V
    .locals 1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/ab;->ab()Lcom/huawei/hianalytics/ab/fg/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/fg/ab;->bc()V

    :cond_0
    return-void
.end method

.method private static declared-synchronized getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;
    .locals 2

    const-class v0, Lcom/huawei/hianalytics/hms/HiAnalytics;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/hms/ab;->ab()Lcom/huawei/hianalytics/hms/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hianalytics/hms/ab;->bc()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v1

    sput-object v1, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    :cond_0
    sget-object v1, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInitFlag()Z
    .locals 1

    invoke-static {}, Lcom/huawei/hianalytics/hms/ab;->ab()Lcom/huawei/hianalytics/hms/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/hms/ab;->cd()Z

    move-result v0

    return v0
.end method

.method public static onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Data type no longer collects range.type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hmsSdk"

    invoke-static {p1, p0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    :cond_0
    return-void
.end method

.method public static onPause(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_0
    return-void
.end method

.method public static onReport()V
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(I)V

    :cond_0
    return-void
.end method

.method public static onReport(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static onResume(Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    :cond_0
    return-void
.end method

.method public static onResume(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_0
    return-void
.end method

.method public static onStreamEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Data type no longer collects range.type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hmsSdk"

    invoke-static {p1, p0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setIsOaidTracking(Z)V
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(IZ)V

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(IZ)V

    :cond_0
    return-void
.end method

.method public static setOAID(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(ILjava/lang/String;)V

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUPID(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/hms/HiAnalytics;->getDefaultInstance()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(ILjava/lang/String;)V

    sget-object v0, Lcom/huawei/hianalytics/hms/HiAnalytics;->defaultInstance:Lcom/huawei/hianalytics/ab/fg/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
