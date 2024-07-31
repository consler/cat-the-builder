.class public Lcom/huawei/hianalytics/ab/fg/cd;
.super Ljava/lang/Object;


# instance fields
.field public ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

.field private bc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-direct {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab(Ljava/lang/String;Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;)V

    return-void
.end method

.method private bc(I)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->de()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    return-object p1
.end method

.method private cd(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "hmsSdk"

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    const-string v3, "_default_config_tag"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "verifyURL(): type: preins. Only default config can report Pre-install data."

    :goto_0
    invoke-static {v2, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(I)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->hi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyURL(): URL check failed. type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public ab(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "hmsSdk"

    const-string v2, "HiAnalyticsInstance.onReport() is execute.TAG: %s,TYPE: %d"

    invoke-static {v1, v2, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/lang/String;I)V

    return-void
.end method

.method public ab(ILcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "hmsSdk"

    if-nez p2, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    aput-object v4, p2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v1

    const-string v4, "HiAnalyticsInstanceImpl.refresh(). Parameter config is null.TAG : %s , TYPE : %d"

    invoke-static {v3, v4, p2}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-direct {v4, p2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;-><init>(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    move-object p2, v4

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "HiAnalyticsInstanceImpl.refresh() is executed.TAG : %s , TYPE : %d"

    invoke-static {v3, v0, v4}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const-string p1, "refresh(): HiAnalyticsType can only be OPERATION ,MAINTAIN or DIFF_PRIVACY."

    invoke-static {v3, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/huawei/hianalytics/ab/fg/cd;->de(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/hi/ab;->ab()Lcom/huawei/hianalytics/ab/bc/hi/ab;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/huawei/hianalytics/ab/bc/hi/ab;->ab(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public ab(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstanceImpl.setUpid() is executed.TAG : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(I)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setUpid(): No related config found.type : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0x1000

    const-string v1, "upid"

    invoke-static {v1, p2, p1}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {v0, p2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->fg(Ljava/lang/String;)V

    return-void
.end method

.method public ab(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 3
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "hmsSdk"

    const-string v2, "HiAnalyticsInstance.onEvent(int type, String eventId, Map<String, String> mapValue) is execute.TAG: %s,TYPE: %d"

    invoke-static {v1, v2, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ", TYPE: "

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent() parameter mapValue will be cleared.TAG: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_1
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void

    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onEvent() parameters check fail. Nothing will be recorded.TAG: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ab(IZ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "hmsSdk"

    const-string v2, "HiAnalyticsInstanceImpl.setOAIDTrackingFlag() is executed.TAG : %s , TYPE : %d"

    invoke-static {v1, v2, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(I)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOAIDTrackingFlag(): No related config found.type : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->de(Ljava/lang/String;)V

    return-void
.end method

.method public ab(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstance.onPause() is execute.TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "context is null in onPause! Nothing will be recorded.TAG: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResume() URL check fail. Nothing will be recorded.TAG: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public ab(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "hmsSdk"

    const-string v2, "HiAnalyticsInstance.onReport(Context context) is execute.TAG: %s,TYPE: %d"

    invoke-static {v1, v2, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string p1, "context is null in onReport!"

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/lang/String;I)V

    return-void
.end method

.method public ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstance.onEvent(eventId, mapValue) is execute.TAG : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "context is null in onevent "

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    const-string v2, "value"

    invoke-static {v2, p3, v0}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent() parameter VALUE is overlong, content will be cleared.TAG: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, ""

    :cond_2
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEvent() parameters check fail. Nothing will be recorded.TAG: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ab(Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstance.onPause(context,map) is execute.TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "context is null in onPause! Nothing will be recorded."

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onResume() URL check fail. Nothing will be recorded.TAG: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPause() parameter mapValue will be cleared.TAG: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_2
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/lang/String;Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public ab(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstanceImpl.setMaintConf() is executed.TAG : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "HiAnalyticsInstanceImpl.setMaintConf(): config for maint is null!"

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ab(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ab(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    return-void
.end method

.method public ab(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 3
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstance.onPause(viewName,map) is execute.TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPause() URL check fail. Nothing will be recorded.TAG: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "viewName"

    const-string v2, "[a-zA-Z_][a-zA-Z0-9. _-]{0,255}"

    invoke-static {v0, p1, v2}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPause() parameter mapValue will be cleared.TAG: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_2
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPause() parameter viewName verify failed. Nothing will be recorded.TAG: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bc(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstanceImpl.setStrOAID() is executed.TAG : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->bc(I)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOAID(): No related config found.type : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0x1000

    const-string v1, "oaid"

    invoke-static {v1, p2, p1}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {v0, p2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->cd(Ljava/lang/String;)V

    return-void
.end method

.method public bc(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 3
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "hmsSdk"

    const-string v2, "HiAnalyticsInstance.onStreamEvent() is execute.TAG: %s,TYPE: %d"

    invoke-static {v1, v2, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ", TYPE: "

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStreamEvent() parameter mapValue will be cleared.TAG: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_1
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/huawei/hianalytics/ab/fg/bc;->bc(Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void

    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStreamEvent() parameters check fail. Nothing will be recorded.TAG: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bc(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstance.onResume() is execute.TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "context is null in onResume! Nothing will be recorded."

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResume() URL check fail. Nothing will be recorded.TAG: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/hianalytics/ab/fg/bc;->bc(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public bc(Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstance.onResume(context,map) is execute.TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "context is null in onResume! Nothing will be recorded."

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onResume() URL check fail. Nothing will be recorded.TAG: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResume() parameter mapValue will be cleared.TAG: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_2
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/hianalytics/ab/fg/bc;->bc(Ljava/lang/String;Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public bc(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstanceImpl.setDiffConf() is executed.TAG : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "HiAnalyticsInstanceImpl.setDiffConf(): config for diffPrivacy is null!"

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->de(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->de(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    return-void
.end method

.method public bc(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 3
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstance.onResume(viewname,map) is execute.TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onResume() URL check fail. Nothing will be recorded.TAG: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "viewName"

    const-string v2, "[a-zA-Z_][a-zA-Z0-9. _-]{0,255}"

    invoke-static {v0, p1, v2}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResume() parameter mapValue will be cleared.TAG: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_2
    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/hianalytics/ab/fg/bc;->bc(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onResume() parameter viewName verify failed. Nothing will be recorded.TAG: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cd(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstanceImpl.setOperConf() is executed.TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->bc(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    const-string p1, "HiAnalyticsInstanceImpl.setOperConf(): config for oper is null!"

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->bc(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    return-void
.end method

.method public de(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstanceImpl.setPreInstallConf() is executed.TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "HiAnalyticsInstanceImpl.setPreInstallConf(): config for PRE-INSTALL is null!"

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->cd(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/cd;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->cd(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    return-void
.end method
