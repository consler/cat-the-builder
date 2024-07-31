.class public Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private ab:Z

.field private b:Z

.field private bc:Z

.field private c:Z

.field private cd:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private de:Ljava/lang/String;

.field private e:J

.field private ef:Ljava/lang/String;

.field private fg:Ljava/lang/String;

.field private gh:Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

.field private hi:Ljava/lang/String;

.field private ij:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ik:Ljava/lang/String;

.field private kl:I

.field private lm:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ef:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->fg:Ljava/lang/String;

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;-><init>()V

    iput-object v1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->gh:Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->hi:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ik:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->kl:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->lm:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->a:Z

    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->e:J

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ef:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->fg:Ljava/lang/String;

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;-><init>()V

    iput-object v1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->gh:Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->hi:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ik:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->kl:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->lm:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->a:Z

    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->e:J

    iget-object v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->gh:Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->gh:Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    iget-boolean v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc(Z)V

    iget-object v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->cd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->de:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ef:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->cd(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->fg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->de(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->hi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ef(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ik:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->fg(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab(Z)V

    iget v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->kl:I

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc(I)V

    iget v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->lm:I

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab(I)V

    iget-boolean v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->a:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->cd(Z)V

    iget-boolean v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->b:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->de(Z)V

    iget-boolean v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->c:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ef(Z)V

    iget-object v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ij:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab(Ljava/util/Map;)V

    iget-object v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->gh(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab(J)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->a:Z

    return v0
.end method

.method public ab()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ij:Ljava/util/Map;

    return-object v0
.end method

.method public ab(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->lm:I

    return-void
.end method

.method public ab(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->e:J

    return-void
.end method

.method public ab(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->cd:Ljava/lang/String;

    return-void
.end method

.method public ab(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ij:Ljava/util/Map;

    return-void
.end method

.method public ab(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->b:Z

    return v0
.end method

.method public bc()Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->gh:Lcom/huawei/hianalytics/ab/bc/cd/ab/bc;

    return-object v0
.end method

.method public bc(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->kl:I

    return-void
.end method

.method public bc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->de:Ljava/lang/String;

    return-void
.end method

.method public bc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->c:Z

    return v0
.end method

.method public cd()I
    .locals 1

    iget v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->lm:I

    return v0
.end method

.method public cd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ef:Ljava/lang/String;

    return-void
.end method

.method public cd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->a:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public de()I
    .locals 1

    iget v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->kl:I

    return v0
.end method

.method public de(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->fg:Ljava/lang/String;

    return-void
.end method

.method public de(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->b:Z

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->e:J

    return-wide v0
.end method

.method public ef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->hi:Ljava/lang/String;

    return-void
.end method

.method public ef(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->c:Z

    return-void
.end method

.method public ef()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->bc:Z

    return v0
.end method

.method public fg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ik:Ljava/lang/String;

    return-void
.end method

.method public fg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ab:Z

    return v0
.end method

.method public gh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->cd:Ljava/lang/String;

    return-object v0
.end method

.method public gh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->d:Ljava/lang/String;

    return-void
.end method

.method public hi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->de:Ljava/lang/String;

    return-object v0
.end method

.method public ij()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ef:Ljava/lang/String;

    return-object v0
.end method

.method public ik()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->fg:Ljava/lang/String;

    return-object v0
.end method

.method public kl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->hi:Ljava/lang/String;

    return-object v0
.end method

.method public lm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/ab/cd;->ik:Ljava/lang/String;

    return-object v0
.end method
