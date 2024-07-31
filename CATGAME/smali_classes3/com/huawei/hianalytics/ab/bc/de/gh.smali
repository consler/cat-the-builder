.class public Lcom/huawei/hianalytics/ab/bc/de/gh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hianalytics/ab/bc/de/gh$ab;
    }
.end annotation


# static fields
.field private static ab:Lcom/huawei/hianalytics/ab/bc/de/gh;


# instance fields
.field private bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/de/gh;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/bc/de/gh;-><init>()V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/de/gh;->ab:Lcom/huawei/hianalytics/ab/bc/de/gh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    invoke-direct {v0, p0}, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;-><init>(Lcom/huawei/hianalytics/ab/bc/de/gh;)V

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    return-void
.end method

.method static synthetic ab(Lcom/huawei/hianalytics/ab/bc/de/gh;)Lcom/huawei/hianalytics/ab/bc/de/gh$ab;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    return-object p0
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/bc/de/gh;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/de/gh;->ab:Lcom/huawei/hianalytics/ab/bc/de/gh;

    return-object v0
.end method

.method private fg()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "hianalytics_njjn"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/huawei/hianalytics/ab/bc/kl/de;->ab(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/huawei/hianalytics/ab/bc/kl/de;->ab(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string v2, "hmsSdk"

    const-string v3, "read pubKey error,the file is corrupted"

    invoke-static {v2, v3}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/huawei/hianalytics/ab/bc/kl/de;->ab(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/huawei/hianalytics/ab/bc/kl/de;->ab(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public bc()V
    .locals 6

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/de/gh;->ef()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/de/gh;->fg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "hmsSdk"

    const-string v1, "get rsa pubkey config error"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v3

    sget-object v4, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v3, v4}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v4

    sget-object v5, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->bc:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v4, v5}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Lcom/huawei/hianalytics/ab/bc/ab/fg;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/huawei/hianalytics/ab/bc/ab/fg;->bc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    invoke-virtual {v5, v2}, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->ab(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->ab(J)V

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    invoke-virtual {v0, v3}, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->bc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    invoke-virtual {v0, v4}, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->cd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0x2932e00

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    iget-object v0, v0, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->ab:Ljava/lang/String;

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v1

    sget-object v4, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v1, v4}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->bc(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v4

    sget-object v5, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->bc:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v4, v5}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Lcom/huawei/hianalytics/ab/bc/ab/fg;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/huawei/hianalytics/ab/bc/ab/fg;->bc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    invoke-virtual {v4, v2, v3}, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->ab(J)V

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    invoke-virtual {v2, v1}, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->bc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    invoke-virtual {v1, v0}, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->cd(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public cd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    iget-object v0, v0, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->bc:Ljava/lang/String;

    return-object v0
.end method

.method public de()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    iget-object v0, v0, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->cd:Ljava/lang/String;

    return-object v0
.end method

.method public ef()J
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc:Lcom/huawei/hianalytics/ab/bc/de/gh$ab;

    iget-wide v0, v0, Lcom/huawei/hianalytics/ab/bc/de/gh$ab;->de:J

    return-wide v0
.end method
