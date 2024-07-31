.class public abstract Lcom/huawei/hianalytics/ab/cd/bc/bc;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ab(ILandroid/content/Context;)Lcom/huawei/hianalytics/ab/cd/ab/ab;
    .locals 2

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->bc:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p0, p2}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object p2, Lcom/huawei/hianalytics/ab/cd/ab/bc;->cd:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, ""

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->cd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->ab:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p2, v0, p1}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p2

    :cond_3
    new-instance p1, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object p2, Lcom/huawei/hianalytics/ab/cd/ab/bc;->de:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1
.end method

.method private bc(ILandroid/content/Context;)Lcom/huawei/hianalytics/ab/cd/ab/ab;
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->fg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object p2, Lcom/huawei/hianalytics/ab/cd/ab/bc;->bc:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, ""

    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->cd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object p2, Lcom/huawei/hianalytics/ab/cd/ab/bc;->ab:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1

    :cond_2
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->cd:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p2, v0, p1}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p2

    :cond_3
    new-instance p1, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object p2, Lcom/huawei/hianalytics/ab/cd/ab/bc;->de:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1
.end method

.method private bc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->de()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/huawei/hianalytics/ab/cd/bc/cd;->fg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->ab(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->de()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private cd(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->gh()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/huawei/hianalytics/ab/cd/bc/cd;->ef(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->de(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->gh()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ef()Z
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->fg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/cd;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->cd(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->fg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private fg()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->hi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/cd;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->ef(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->hi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ab(Landroid/content/Context;)Lcom/huawei/hianalytics/ab/cd/ab/ab;
    .locals 3

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object v1, Lcom/huawei/hianalytics/ab/cd/ab/bc;->bc:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p1, v1, v0}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->bc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    sget-object v1, Lcom/huawei/hianalytics/ab/cd/ab/bc;->ab:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p1, v1, v0}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->ef()Z

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance p1, Lcom/huawei/hianalytics/ab/cd/ab/ab;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->cd:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-direct {p1, v0, v1}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1

    :cond_2
    sget-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->bc:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-virtual {p0, v1}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/huawei/hianalytics/ab/cd/ab/ab;-><init>(Lcom/huawei/hianalytics/ab/cd/ab/bc;Ljava/lang/String;)V

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->de()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->bc(ILandroid/content/Context;)Lcom/huawei/hianalytics/ab/cd/ab/ab;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->de()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/huawei/hianalytics/ab/cd/bc/bc;->ab(ILandroid/content/Context;)Lcom/huawei/hianalytics/ab/cd/ab/ab;

    move-result-object p1

    return-object p1
.end method

.method public abstract ab()Ljava/lang/String;
.end method

.method public abstract ab(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract bc()Ljava/lang/String;
.end method

.method public abstract cd()Ljava/lang/String;
.end method

.method public abstract de()I
.end method
