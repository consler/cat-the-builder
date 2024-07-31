.class public Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hianalytics/ab/bc/ik/cd/ab;


# instance fields
.field private ab:[B

.field private bc:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private de:Ljava/lang/String;

.field private ef:Ljava/lang/String;

.field private fg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hianalytics/ab/bc/cd/bc/de;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/hianalytics/ab/bc/cd/bc/de;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->ab:[B

    iput-object p2, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->bc:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->cd:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->ef:Ljava/lang/String;

    iput-object p5, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->de:Ljava/lang/String;

    iput-object p6, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->fg:Ljava/util/List;

    return-void
.end method

.method private ab(Ljava/util/Map;)Lcom/huawei/hianalytics/ab/bc/fg/cd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/hianalytics/ab/bc/fg/cd;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->bc:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->ab:[B

    invoke-static {v0, v1, p1}, Lcom/huawei/hianalytics/ab/bc/fg/bc;->ab(Ljava/lang/String;[BLjava/util/Map;)Lcom/huawei/hianalytics/ab/bc/fg/cd;

    move-result-object p1

    return-object p1
.end method

.method private ab()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->cd:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->ef:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->de:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/huawei/hianalytics/ab/de/ab;->cd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private bc()V
    .locals 5

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->fg:Ljava/util/List;

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->cd:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->de:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->ef:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ik/cd/ab;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "DataSendTask"

    const-string v1, "send data running"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->ab()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->ab(Ljava/util/Map;)Lcom/huawei/hianalytics/ab/bc/fg/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/bc/fg/cd;->ab()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->bc()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "events PostRequest sendevent TYPE : %s, TAG : %s, resultCode: %d ,reqID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->de:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->ef:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;->cd:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
