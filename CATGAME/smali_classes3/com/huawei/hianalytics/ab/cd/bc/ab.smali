.class public Lcom/huawei/hianalytics/ab/cd/bc/ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;
    }
.end annotation


# static fields
.field private static bc:Lcom/huawei/hianalytics/ab/cd/bc/ab;


# instance fields
.field private ab:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;
    .locals 2

    const-class v0, Lcom/huawei/hianalytics/ab/cd/bc/ab;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hianalytics/ab/cd/bc/ab;->bc:Lcom/huawei/hianalytics/ab/cd/bc/ab;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hianalytics/ab/cd/bc/ab;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/cd/bc/ab;-><init>()V

    sput-object v1, Lcom/huawei/hianalytics/ab/cd/bc/ab;->bc:Lcom/huawei/hianalytics/ab/cd/bc/ab;

    :cond_0
    sget-object v1, Lcom/huawei/hianalytics/ab/cd/bc/ab;->bc:Lcom/huawei/hianalytics/ab/cd/bc/ab;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public ab(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/cd/ab/ab;
    .locals 1

    new-instance v0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->ab(Landroid/content/Context;)Lcom/huawei/hianalytics/ab/cd/ab/ab;

    move-result-object p1

    return-object p1
.end method

.method public ab(Z)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->gh()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab:Landroid/content/Context;

    const-string v1, "global_v2"

    const-string v2, "uuid"

    invoke-static {p1, v1, v2, v0}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->bc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "-"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/huawei/hianalytics/ab/ab/bc;->ab(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public ab(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public bc(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/ab/ab;->fg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hianalytics/ab/cd/bc/cd;->gh(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object p2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->lm(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object p2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->a(Ljava/lang/String;)V

    return-object p1

    :cond_2
    new-instance p1, Landroid/util/Pair;

    const-string p2, ""

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public cd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/cd/bc/de;->bc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public de(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/huawei/hianalytics/ab/cd/bc/de;->ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/huawei/hianalytics/ab/cd/bc/de;->bc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/cd/bc/de;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
