.class public final Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;
.super Ljava/lang/Object;


# static fields
.field static ab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;",
            ">;"
        }
    .end annotation
.end field

.field private static cd:Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;


# instance fields
.field private bc:Lcom/huawei/hianalytics/ab/bc/cd/ab/de;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;-><init>()V

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->bc:Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd:Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->de()V

    :cond_0
    sget-object v0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd:Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    return-object v0
.end method

.method private static declared-synchronized de()V
    .locals 2

    const-class v0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd:Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;-><init>()V

    sput-object v1, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd:Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;
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
.method public ab(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    return-object p1
.end method

.method public ab(Ljava/lang/String;Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;)V
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bc()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->bc:Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    return-object v0
.end method
