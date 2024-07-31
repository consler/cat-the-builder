.class public abstract Lcom/huawei/hianalytics/ab/ab/cd;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->lm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static ab(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab(J)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->e()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static bc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->gh()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;
    .locals 1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "alltype"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "oper"

    invoke-virtual {p0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ab(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "maint"

    invoke-virtual {p0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ab(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ef;->ab(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->hi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static de(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ij()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static ef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ik()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static fg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->kl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static gh(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->cd()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0
.end method

.method public static hi(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->de()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static ij(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ik(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static kl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static lm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
