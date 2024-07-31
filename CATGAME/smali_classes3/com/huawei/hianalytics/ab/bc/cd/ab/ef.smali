.class public Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;
.super Ljava/lang/Object;


# instance fields
.field private ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

.field private bc:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

.field private cd:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

.field private de:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

.field private ef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ef:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    return-object v0
.end method

.method public ab(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;
    .locals 2

    const-string v0, "oper"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "maint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "diffprivacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->de()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "preins"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiAnalyticsInstData.getConfig(type): wrong type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hmsSdk"

    invoke-static {v0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public ab(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ab:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    return-void
.end method

.method public bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->bc:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    return-object v0
.end method

.method public bc(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->bc:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    return-void
.end method

.method public cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->de:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    return-object v0
.end method

.method public cd(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->de:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    return-void
.end method

.method public de()Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->cd:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    return-object v0
.end method

.method public de(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->cd:Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    return-void
.end method
