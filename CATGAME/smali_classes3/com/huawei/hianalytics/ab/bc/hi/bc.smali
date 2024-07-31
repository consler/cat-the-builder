.class public Lcom/huawei/hianalytics/ab/bc/hi/bc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;
    }
.end annotation


# instance fields
.field private ab:J

.field private bc:J

.field private volatile cd:Z

.field private volatile de:J

.field private ef:Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ab:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->bc:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->cd:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->de:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ef:Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;

    return-void
.end method

.method static synthetic ab(Lcom/huawei/hianalytics/ab/bc/hi/bc;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->cd:Z

    return p0
.end method

.method static synthetic ab(Lcom/huawei/hianalytics/ab/bc/hi/bc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->cd:Z

    return p1
.end method

.method static synthetic bc(Lcom/huawei/hianalytics/ab/bc/hi/bc;)J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ab:J

    return-wide v0
.end method


# virtual methods
.method public ab()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ef:Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;

    if-nez v0, :cond_0

    const-string v0, "SessionWrapper"

    const-string v1, "getSessionName(): session not prepared. onEvent() must be called first."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;->ab:Ljava/lang/String;

    return-object v0
.end method

.method ab(J)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ef:Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;

    if-nez v0, :cond_0

    const-string v0, "SessionWrapper"

    const-string v1, "Session is first flush"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;-><init>(Lcom/huawei/hianalytics/ab/bc/hi/bc;J)V

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ef:Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;->ab(J)V

    return-void
.end method

.method public bc()Z
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ef:Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;

    if-nez v0, :cond_0

    const-string v0, "SessionWrapper"

    const-string v1, "isFirstEvent(): session not prepared. onEvent() must be called first."

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;->bc:Z

    return v0
.end method

.method public cd()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->ef:Lcom/huawei/hianalytics/ab/bc/hi/bc$ab;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->de:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/hi/bc;->cd:Z

    return-void
.end method
