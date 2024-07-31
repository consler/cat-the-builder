.class public Lcom/huawei/hianalytics/ab/bc/de/ab;
.super Ljava/lang/Object;


# static fields
.field private static ab:Lcom/huawei/hianalytics/ab/bc/de/ab;


# instance fields
.field private final bc:Ljava/lang/Object;

.field private cd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/de/ab;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/bc/de/ab;-><init>()V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/de/ab;->ab:Lcom/huawei/hianalytics/ab/bc/de/ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/ab;->bc:Ljava/lang/Object;

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/bc/de/ab;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/de/ab;->ab:Lcom/huawei/hianalytics/ab/bc/de/ab;

    return-object v0
.end method

.method private cd()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab()Lcom/huawei/hianalytics/ab/bc/gh/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->cd()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v1

    const-string v2, "global_v2"

    const-string v3, "common_prop"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->bc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v2

    sget-object v3, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v2, v3}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Lcom/huawei/hianalytics/ab/bc/ab/fg;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/huawei/hianalytics/ab/bc/ab/fg;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private de()V
    .locals 4

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab()Lcom/huawei/hianalytics/ab/bc/gh/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->cd()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v1

    sget-object v2, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v1, v2}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Lcom/huawei/hianalytics/ab/bc/ab/fg;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/de/ab;->cd:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/huawei/hianalytics/ab/bc/ab/fg;->bc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v1

    const-string v2, "global_v2"

    const-string v3, "common_prop"

    invoke-static {v1, v2, v3, v0}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ab(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/ab;->bc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/de/ab;->cd:Ljava/lang/String;

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/de/ab;->de()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/ab;->bc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/ab;->cd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/de/ab;->cd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/ab;->cd:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/ab;->cd:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
