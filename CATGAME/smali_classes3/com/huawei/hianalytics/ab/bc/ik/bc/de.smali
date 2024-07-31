.class public Lcom/huawei/hianalytics/ab/bc/ik/bc/de;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hianalytics/ab/bc/ik/cd/ab;


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


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hianalytics/ab/bc/cd/bc/de;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->ab:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->bc:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->cd:Ljava/lang/String;

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->de:Ljava/util/List;

    return-void
.end method

.method private ab()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->ab:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->cd:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->bc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/huawei/hianalytics/ab/bc/kl/ef;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "backup_event"

    invoke-static {v1, v0, v2}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->de:Ljava/util/List;

    const-string v1, "FailedEventHandlerTask"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ij()I

    move-result v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x100000

    mul-int/2addr v0, v3

    const-string v4, "cached_v2_1"

    invoke-static {v2, v4, v0}, Lcom/huawei/hianalytics/ab/bc/kl/bc;->ab(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The cacheFile is full,Can not writing data! reqID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->bc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->cd:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/huawei/hianalytics/ab/bc/kl/ef;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v0}, Lcom/huawei/hianalytics/ab/bc/de/ef;->bc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->de:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->de:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;

    :try_start_0
    invoke-virtual {v6}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->de()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v6, "event to json error"

    invoke-static {v1, v6}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->hi()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/2addr v5, v3

    if-le v6, v5, :cond_4

    const-string v0, "this failed data is too long,can not writing it"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->de:Ljava/util/List;

    return-void

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data send failed, write to cache file...reqID:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->bc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0, v2}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/ik/bc/de;->ab()V

    return-void

    :cond_5
    :goto_1
    const-string v0, "failed events is empty"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
