.class public Lcom/huawei/hianalytics/ab/bc/de/cd;
.super Ljava/lang/Object;


# instance fields
.field private ab:Ljava/lang/String;

.field private bc:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private de:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hianalytics/ab/bc/cd/bc/de;",
            ">;"
        }
    .end annotation
.end field

.field private ef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/hianalytics/ab/bc/cd/bc/de;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->bc:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->cd:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->de:Ljava/util/List;

    iput-object p5, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ef:Ljava/lang/String;

    return-void
.end method

.method private ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/ab/cd;->cd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "DataReportHandler"

    const-string p2, "No report address,TAG : %s,TYPE: %s "

    invoke-static {p1, p2, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const-string p1, "oper"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "{url}"

    if-eqz p1, :cond_1

    const-string p1, "{url}/common/hmshioperqrt"

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string p1, "maint"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "{url}/common/hmshimaintqrt"

    goto :goto_0

    :cond_2
    const-string p1, "diffprivacy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "{url}/common/common2"

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2
.end method

.method private ab(Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;)[B
    .locals 3

    const-string v0, "DataReportHandler"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;->cd()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "uploadEvents is null"

    invoke-static {v0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hianalytics/ab/bc/kl/de;->ab([B)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p1, "sendData(): getBytes - Unsupported coding format!!"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p1, "uploadEvents to json error"

    :goto_0
    invoke-static {v0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B

    return-object p1
.end method

.method private bc()Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->de:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;

    :try_start_0
    invoke-virtual {v2}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->de()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "DataReportHandler"

    const-string v3, "handleEvents: json error,Abandon this data"

    invoke-static {v2, v3}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private cd()V
    .locals 6

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v0

    const-string v1, "backup_event"

    const/high16 v2, 0x500000

    invoke-static {v0, v1, v2}, Lcom/huawei/hianalytics/ab/bc/kl/bc;->ab(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "DataReportHandler"

    if-eqz v0, :cond_0

    const-string v0, "backup file reach max limited size, discard new event "

    invoke-static {v2, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/de/cd;->bc()Lorg/json/JSONArray;

    move-result-object v0

    iget-object v3, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->bc:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ef:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/huawei/hianalytics/ab/bc/kl/ef;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update data cached into backup,spKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v3, v0}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private de()Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;
    .locals 5

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->de:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->bc:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ef:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->cd:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hianalytics/ab/de/ab;->ab(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ab()V
    .locals 9

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->bc:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DataReportHandler"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->bc:Ljava/lang/String;

    const-string v2, "preins"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "collectUrl is empty"

    :goto_0
    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab:Ljava/lang/String;

    const-string v2, "_hms_config_tag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab:Ljava/lang/String;

    const-string v2, "_openness_config_tag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/de/cd;->cd()V

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/de/cd;->de()Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab(Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;)[B

    move-result-object v3

    array-length v0, v3

    if-nez v0, :cond_2

    const-string v0, "request body is empty"

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->bc:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ef:Ljava/lang/String;

    iget-object v8, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->de:Ljava/util/List;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hianalytics/ab/bc/ik/bc/ab;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->bc()Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->de:Ljava/util/List;

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ab:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->ef:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hianalytics/ab/bc/de/cd;->bc:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ik/cd/ab;)V

    return-void
.end method
