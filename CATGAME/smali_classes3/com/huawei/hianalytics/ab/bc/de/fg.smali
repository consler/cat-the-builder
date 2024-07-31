.class public Lcom/huawei/hianalytics/ab/bc/de/fg;
.super Ljava/lang/Object;


# instance fields
.field private ab:Ljava/lang/String;

.field private bc:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private de:Ljava/lang/String;

.field private ef:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->ab:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->bc:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->cd:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->de:Ljava/lang/String;

    iput-wide p5, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->ef:J

    return-void
.end method


# virtual methods
.method public ab()V
    .locals 10

    const-string v0, "StreamEventHandler"

    const-string v1, "Begin to handle stream events..."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;-><init>()V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->cd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->bc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->ab(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->de:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->cd(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->ef:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->de(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->bc:Ljava/lang/String;

    const-string v2, "oper"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->ab:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hianalytics/ab/ab/ab;->ef(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/hi/ab;->ab()Lcom/huawei/hianalytics/ab/bc/hi/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->ab:Ljava/lang/String;

    iget-wide v3, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->ef:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/huawei/hianalytics/ab/bc/hi/ab;->ab(Ljava/lang/String;J)Lcom/huawei/hianalytics/ab/bc/hi/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/bc/hi/bc;->bc()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->ef(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->fg(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/de/cd;

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->ab:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hianalytics/ab/bc/de/fg;->bc:Ljava/lang/String;

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->fg()Ljava/lang/String;

    move-result-object v7

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/huawei/hianalytics/ab/bc/de/cd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab()V

    return-void
.end method
