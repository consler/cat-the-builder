.class public Lcom/huawei/hms/framework/network/grs/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/framework/network/grs/b/b$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/huawei/hms/framework/network/grs/b/d;

.field private b:Ljava/lang/String;

.field private c:Lcom/huawei/hms/framework/network/grs/b/a;

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/b/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/b/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/b/b;->c:Lcom/huawei/hms/framework/network/grs/b/a;

    iput p2, p0, Lcom/huawei/hms/framework/network/grs/b/b;->d:I

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/b/b;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/huawei/hms/framework/network/grs/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g()Lcom/huawei/hms/framework/network/grs/b/b$a;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/b$a;->c:Lcom/huawei/hms/framework/network/grs/b/b$a;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/b;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hms/framework/network/grs/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/b$a;->b:Lcom/huawei/hms/framework/network/grs/b/b$a;

    return-object v0

    :cond_1
    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/b$a;->a:Lcom/huawei/hms/framework/network/grs/b/b$a;

    return-object v0

    :cond_2
    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/b$a;->c:Lcom/huawei/hms/framework/network/grs/b/b$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/huawei/hms/framework/network/grs/b/a;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/b;->c:Lcom/huawei/hms/framework/network/grs/b/a;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/b/b;->d:I

    return v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/concurrent/Callable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Lcom/huawei/hms/framework/network/grs/b/d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/b$a;->c:Lcom/huawei/hms/framework/network/grs/b/b$a;

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/b/b;->g()Lcom/huawei/hms/framework/network/grs/b/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/framework/network/grs/b/b$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/huawei/hms/framework/network/grs/b/b$a;->b:Lcom/huawei/hms/framework/network/grs/b/b$a;

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/b/b;->g()Lcom/huawei/hms/framework/network/grs/b/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/framework/network/grs/b/b$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/huawei/hms/framework/network/grs/b/f;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/b/b;->b:Ljava/lang/String;

    iget v3, p0, Lcom/huawei/hms/framework/network/grs/b/b;->d:I

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/b/b;->c:Lcom/huawei/hms/framework/network/grs/b/a;

    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/b/b;->e:Landroid/content/Context;

    iget-object v6, p0, Lcom/huawei/hms/framework/network/grs/b/b;->f:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/huawei/hms/framework/network/grs/b/f;-><init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/b/a;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/huawei/hms/framework/network/grs/b/g;

    iget-object v8, p0, Lcom/huawei/hms/framework/network/grs/b/b;->b:Ljava/lang/String;

    iget v9, p0, Lcom/huawei/hms/framework/network/grs/b/b;->d:I

    iget-object v10, p0, Lcom/huawei/hms/framework/network/grs/b/b;->c:Lcom/huawei/hms/framework/network/grs/b/a;

    iget-object v11, p0, Lcom/huawei/hms/framework/network/grs/b/b;->e:Landroid/content/Context;

    iget-object v12, p0, Lcom/huawei/hms/framework/network/grs/b/b;->f:Ljava/lang/String;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/huawei/hms/framework/network/grs/b/g;-><init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/b/a;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
