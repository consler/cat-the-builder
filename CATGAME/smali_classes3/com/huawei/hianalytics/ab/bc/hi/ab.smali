.class public final Lcom/huawei/hianalytics/ab/bc/hi/ab;
.super Ljava/lang/Object;


# static fields
.field private static ab:Lcom/huawei/hianalytics/ab/bc/hi/ab;


# instance fields
.field private volatile bc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hianalytics/ab/bc/hi/bc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/ab;->bc:Ljava/util/Map;

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/bc/hi/ab;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/hi/ab;->ab:Lcom/huawei/hianalytics/ab/bc/hi/ab;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/hi/ab;->bc()V

    :cond_0
    sget-object v0, Lcom/huawei/hianalytics/ab/bc/hi/ab;->ab:Lcom/huawei/hianalytics/ab/bc/hi/ab;

    return-object v0
.end method

.method private bc(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/hi/bc;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/ab;->bc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/hi/bc;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/bc/hi/bc;-><init>()V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/hi/ab;->bc:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/ab;->bc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hianalytics/ab/bc/hi/bc;

    return-object p1
.end method

.method private static declared-synchronized bc()V
    .locals 2

    const-class v0, Lcom/huawei/hianalytics/ab/bc/hi/ab;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hianalytics/ab/bc/hi/ab;->ab:Lcom/huawei/hianalytics/ab/bc/hi/ab;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/hi/ab;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/bc/hi/ab;-><init>()V

    sput-object v1, Lcom/huawei/hianalytics/ab/bc/hi/ab;->ab:Lcom/huawei/hianalytics/ab/bc/hi/ab;
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
.method public ab(Ljava/lang/String;J)Lcom/huawei/hianalytics/ab/bc/hi/bc;
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hianalytics/ab/bc/hi/ab;->bc(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/hi/bc;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ab(J)V

    return-object p1
.end method

.method public ab(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hianalytics/ab/bc/hi/ab;->bc(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/hi/bc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/hi/bc;->cd()V

    return-void
.end method
