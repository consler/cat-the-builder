.class public Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hianalytics/hms/HiAnalyticsConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field appid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

.field operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->mContext:Landroid/content/Context;

    :cond_0
    new-instance p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-direct {p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;-><init>()V

    iput-object p1, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    new-instance p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-direct {p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;-><init>()V

    iput-object p1, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->mContext:Landroid/content/Context;

    const-string v1, "hmsSdk"

    if-nez v0, :cond_0

    const-string v0, "analyticsConf create(): context is null,create failed!"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->de(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Builder.create() is execute."

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/hianalytics/ab/fg/cd;

    const-string v1, "_hms_config_tag"

    invoke-direct {v0, v1}, Lcom/huawei/hianalytics/ab/fg/cd;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    iget-object v2, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-direct {v1, v2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;-><init>(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/fg/cd;->cd(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    iget-object v2, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-direct {v1, v2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;-><init>(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/ab;->ab()Lcom/huawei/hianalytics/ab/fg/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/hianalytics/ab/fg/ab;->ab(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->ab()Lcom/huawei/hianalytics/ab/fg/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hianalytics/hms/ab;->ab()Lcom/huawei/hianalytics/hms/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/hianalytics/hms/ab;->ab(Lcom/huawei/hianalytics/ab/fg/cd;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/ab;->ab()Lcom/huawei/hianalytics/ab/fg/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/fg/ab;->bc(Ljava/lang/String;)V

    return-void
.end method

.method public refresh(Z)V
    .locals 4

    const-string v0, "hmsSdk"

    const-string v1, "Builder.refresh() is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    iget-object v2, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-direct {v1, v2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;-><init>(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    new-instance v2, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    iget-object v3, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-direct {v2, v3}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;-><init>(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    invoke-static {}, Lcom/huawei/hianalytics/hms/ab;->ab()Lcom/huawei/hianalytics/hms/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hianalytics/hms/ab;->bc()Lcom/huawei/hianalytics/ab/fg/cd;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p1, "HiAnalyticsInstance.Builder.Refresh(): calling refresh before create. TAG: _hms_config_tag has no instance. "

    invoke-static {v0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v3, v0, v1}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(ILcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v2}, Lcom/huawei/hianalytics/ab/fg/cd;->ab(ILcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->appid:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/ab;->ab()Lcom/huawei/hianalytics/ab/fg/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/fg/ab;->bc(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/ab;->ab()Lcom/huawei/hianalytics/ab/fg/ab;

    move-result-object p1

    const-string v0, "_hms_config_tag"

    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/ab/fg/ab;->ab(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setAndroidId(Ljava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "setAndroidId(String androidId) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "androidId"

    const/16 v1, 0x1000

    invoke-static {v0, p1, v1}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->cd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->cd(Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppID(Ljava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setAppID is execute"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setChannel(String channel) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    const/16 v1, 0x100

    invoke-static {v0, p1, v1}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCollectURL(ILjava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder.setCollectURL(int type,String collectURL) is execute.TYPE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSdk"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/fg;->ab(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, ""

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string p1, "Builder.setCollectURL(int type,String collectURL): invalid type!"

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public setEnableAndroidID(Z)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setEnableAndroidID(boolean reportAndroidID) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->de(Z)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->de(Z)V

    return-object p0
.end method

.method public setEnableImei(Z)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setEnableImei(boolean isReportAndroidImei) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->ab(Z)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->ab(Z)V

    return-object p0
.end method

.method public setEnableMccMnc(Z)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setEnableMccMnc(boolean enableMccMnc) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc(Z)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc(Z)V

    return-object p0
.end method

.method public setEnableSN(Z)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setEnableSN(boolean isReportSN) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->bc(Z)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->bc(Z)V

    return-object p0
.end method

.method public setEnableUDID(Z)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setEnableUDID(boolean isReportUDID) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->cd(Z)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->cd(Z)V

    return-object p0
.end method

.method public setEnableUUID(Z)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setEnableUUID() is executed."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->cd(Z)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->cd(Z)V

    return-object p0
.end method

.method public setIMEI(Ljava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "setIMEI(String imei) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imei"

    const/16 v1, 0x1000

    invoke-static {v0, p1, v1}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->ab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->ab(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSDKPkgName(Ljava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "Builder.setSDKPkgName is executed"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkPkgName"

    const-string v1, "[a-zA-Z0-9_][a-zA-Z0-9. _-]{0,255}"

    invoke-static {v0, p1, v1}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->gh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->gh(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setSN(Ljava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "setSN(String sn) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sn"

    const/16 v1, 0x1000

    invoke-static {v0, p1, v1}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->de(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->de(Ljava/lang/String;)V

    return-object p0
.end method

.method public setUDID(Ljava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "setUDID(String udid) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "udid"

    const/16 v1, 0x1000

    invoke-static {v0, p1, v1}, Lcom/huawei/hianalytics/ab/bc/kl/cd;->ab(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->operData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->bc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->maintData:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;->bc(Ljava/lang/String;)V

    return-object p0
.end method
