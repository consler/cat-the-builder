.class public Lcom/huawei/updatesdk/service/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/huawei/updatesdk/service/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/huawei/updatesdk/service/c/c$a;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/huawei/updatesdk/service/c/c$b;

.field private g:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/huawei/updatesdk/service/c/c$a;->a:Lcom/huawei/updatesdk/service/c/c$a;

    iput-object v0, p0, Lcom/huawei/updatesdk/service/c/b;->b:Lcom/huawei/updatesdk/service/c/c$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/service/c/b;->c:Z

    sget-object v0, Lcom/huawei/updatesdk/service/c/c$b;->a:Lcom/huawei/updatesdk/service/c/c$b;

    iput-object v0, p0, Lcom/huawei/updatesdk/service/c/b;->f:Lcom/huawei/updatesdk/service/c/c$b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/updatesdk/service/c/b;->g:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/huawei/updatesdk/service/c/c$a;->a:Lcom/huawei/updatesdk/service/c/c$a;

    iput-object v0, p0, Lcom/huawei/updatesdk/service/c/b;->b:Lcom/huawei/updatesdk/service/c/c$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/service/c/b;->c:Z

    sget-object v0, Lcom/huawei/updatesdk/service/c/c$b;->a:Lcom/huawei/updatesdk/service/c/c$b;

    iput-object v0, p0, Lcom/huawei/updatesdk/service/c/b;->f:Lcom/huawei/updatesdk/service/c/c$b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/updatesdk/service/c/b;->g:I

    invoke-virtual {p0, p2}, Lcom/huawei/updatesdk/service/c/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/service/c/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/updatesdk/service/c/b;Lcom/huawei/updatesdk/service/c/b;)I
    .locals 2

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/c/b;->a()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/c/b;->b()I

    move-result p1

    invoke-virtual {p2}, Lcom/huawei/updatesdk/service/c/b;->b()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/service/c/b;->a:I

    return-void
.end method

.method public a(Lcom/huawei/updatesdk/service/c/c$a;)V
    .locals 0

    invoke-static {p1}, Lcom/huawei/updatesdk/service/e/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/updatesdk/service/c/c$a;

    iput-object p1, p0, Lcom/huawei/updatesdk/service/c/b;->b:Lcom/huawei/updatesdk/service/c/c$a;

    return-void
.end method

.method public a(Lcom/huawei/updatesdk/service/c/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/c/b;->f:Lcom/huawei/updatesdk/service/c/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/c/b;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/updatesdk/service/c/b;->c:Z

    return-void
.end method

.method protected a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/huawei/updatesdk/service/c/b;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/huawei/updatesdk/service/c/b;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/service/c/b;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/c/b;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/huawei/updatesdk/service/c/b;

    check-cast p2, Lcom/huawei/updatesdk/service/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/huawei/updatesdk/service/c/b;->a(Lcom/huawei/updatesdk/service/c/b;Lcom/huawei/updatesdk/service/c/b;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/c/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/huawei/updatesdk/service/c/c$b;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/c/b;->f:Lcom/huawei/updatesdk/service/c/c$b;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/huawei/updatesdk/service/c/b;->g:I

    return v0
.end method
