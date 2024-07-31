.class public Lcom/huawei/hianalytics/ab/bc/ef/ab;
.super Ljava/lang/Object;


# static fields
.field private static ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ef/bc;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/bc/ef/bc;-><init>()V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    return-void
.end method

.method public static ab(I)V
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->ab(I)V

    return-void
.end method

.method public static ab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->ab(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->ab(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static ab()Z
    .locals 2

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->bc(I)Z

    move-result v0

    return v0
.end method

.method public static bc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->ab(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static bc()Z
    .locals 2

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->bc(I)Z

    move-result v0

    return v0
.end method

.method public static cd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->ab(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static cd()Z
    .locals 2

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->bc(I)Z

    move-result v0

    return v0
.end method

.method public static de(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->de()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->ab(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static de()Z
    .locals 2

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ef/bc;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/bc;->bc(I)Z

    move-result v0

    return v0
.end method
