.class public Lcom/huawei/hianalytics/ab/ef/ab;
.super Lcom/huawei/hianalytics/ab/bc/cd/bc/ab;


# instance fields
.field protected bc:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private de:Ljava/lang/String;

.field private ef:Ljava/lang/String;

.field private fg:Ljava/lang/String;

.field private gh:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/cd/bc/ab;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/ef/ab;->cd:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/ef/ab;->de:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/ef/ab;->ef:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/ef/ab;->fg:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/ef/ab;->bc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->cd:Ljava/lang/String;

    return-void
.end method

.method public cd()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->ab:Ljava/lang/String;

    const-string v2, "androidid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->gh:Ljava/lang/String;

    const-string v2, "oaid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->bc:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->fg:Ljava/lang/String;

    const-string v2, "upid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->cd:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->de:Ljava/lang/String;

    const-string v2, "sn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->ef:Ljava/lang/String;

    const-string v2, "udid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public cd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->de:Ljava/lang/String;

    return-void
.end method

.method public de(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->fg:Ljava/lang/String;

    return-void
.end method

.method public ef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->ef:Ljava/lang/String;

    return-void
.end method

.method public fg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->bc:Ljava/lang/String;

    return-void
.end method

.method public gh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/ef/ab;->gh:Ljava/lang/String;

    return-void
.end method
