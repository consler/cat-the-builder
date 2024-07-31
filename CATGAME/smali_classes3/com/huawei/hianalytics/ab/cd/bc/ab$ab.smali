.class Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;
.super Lcom/huawei/hianalytics/ab/cd/bc/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hianalytics/ab/cd/bc/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ab"
.end annotation


# instance fields
.field ab:Ljava/lang/String;

.field bc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/cd/bc/bc;-><init>()V

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->ab:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->bc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ab()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->ab:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->bc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/ab/ab;->bc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ab(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->ab:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->bc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->ab:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->bc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/ab/ab;->de(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public de()I
    .locals 4

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->ab:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->bc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/ab/ab;->hi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v1

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->ab:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->bc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huawei/hianalytics/ab/ab/ab;->gh(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/cd/bc/ab$ab;->bc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hianalytics/ab/ab/ab;->ik(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
