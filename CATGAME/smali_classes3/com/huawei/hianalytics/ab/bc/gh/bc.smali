.class public Lcom/huawei/hianalytics/ab/bc/gh/bc;
.super Ljava/lang/Object;


# static fields
.field private static ab:Lcom/huawei/hianalytics/ab/bc/gh/bc;


# instance fields
.field private bc:Ljava/lang/String;

.field private cd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/bc/gh/bc;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab:Lcom/huawei/hianalytics/ab/bc/gh/bc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->de()V

    :cond_0
    sget-object v0, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab:Lcom/huawei/hianalytics/ab/bc/gh/bc;

    return-object v0
.end method

.method private ab(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "RootKeyManager"

    const-string v1, "refresh sp aes key"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v1

    sget-object v2, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v1, v2}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Lcom/huawei/hianalytics/ab/bc/ab/fg;

    move-result-object v1

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->fg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/huawei/hianalytics/ab/bc/ab/fg;->bc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "refreshLocalKey(): encrypted key is empty"

    invoke-static {v0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Privacy_MY"

    const-string v2, "PrivacyData"

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "flashKeyTime"

    invoke-static {p1, v1, v0, v2, v3}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    return p1
.end method

.method private static declared-synchronized de()V
    .locals 2

    const-class v0, Lcom/huawei/hianalytics/ab/bc/gh/bc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab:Lcom/huawei/hianalytics/ab/bc/gh/bc;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/gh/bc;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/bc/gh/bc;-><init>()V

    sput-object v1, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab:Lcom/huawei/hianalytics/ab/bc/gh/bc;
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

.method private ef()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Privacy_MY"

    const-string v2, "PrivacyData"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->bc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab(Ljava/lang/String;)Z

    return-object v0

    :cond_0
    sget-object v2, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v1, v2}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Lcom/huawei/hianalytics/ab/bc/ab/fg;

    move-result-object v2

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->fg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/huawei/hianalytics/ab/bc/ab/fg;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab(Ljava/lang/String;)Z

    :cond_1
    return-object v0
.end method

.method private fg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/gh/bc;->cd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/gh/ab;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/bc/gh/ab;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/gh/ab;->ab()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/gh/bc;->cd:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/gh/bc;->cd:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bc()V
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v0

    sget-object v1, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/gh/bc;->bc:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public cd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/gh/bc;->bc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/gh/bc;->bc:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/gh/bc;->bc:Ljava/lang/String;

    return-object v0
.end method
