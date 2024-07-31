.class public final Lcom/huawei/hianalytics/ab/fg/bc;
.super Ljava/lang/Object;


# static fields
.field private static ab:Lcom/huawei/hianalytics/ab/fg/bc;


# instance fields
.field private bc:Landroid/content/Context;

.field private final cd:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hianalytics/ab/fg/bc;->ab:Lcom/huawei/hianalytics/ab/fg/bc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/fg/bc;->cd:Ljava/lang/Object;

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/fg/bc;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/fg/bc;->ab:Lcom/huawei/hianalytics/ab/fg/bc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/fg/bc;->bc()V

    :cond_0
    sget-object v0, Lcom/huawei/hianalytics/ab/fg/bc;->ab:Lcom/huawei/hianalytics/ab/fg/bc;

    return-object v0
.end method

.method private ab(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, "HiAnalyticsEventManager"

    const-string v1, "Exception occured when transferring bundle to json"

    invoke-static {p1, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->de(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static declared-synchronized bc()V
    .locals 2

    const-class v0, Lcom/huawei/hianalytics/ab/fg/bc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hianalytics/ab/fg/bc;->ab:Lcom/huawei/hianalytics/ab/fg/bc;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hianalytics/ab/fg/bc;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/fg/bc;-><init>()V

    sput-object v1, Lcom/huawei/hianalytics/ab/fg/bc;->ab:Lcom/huawei/hianalytics/ab/fg/bc;
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

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/fg/bc;->cd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hianalytics/ab/fg/bc;->bc:Landroid/content/Context;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/huawei/hianalytics/ab/fg/bc;->bc:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ab(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;I)V

    return-void
.end method

.method public ab(Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public ab(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public ab(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "_constants"

    invoke-virtual {p2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0, p3, p2}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p1

    const-string p1, "HiAnalyticsEventManager"

    const-string p2, "onEvent():JSON structure Exception!"

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ab(Ljava/lang/String;Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public ab(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bc(Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method public bc(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bc(Ljava/lang/String;Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bc(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/huawei/hianalytics/ab/fg/bc;->ab(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
