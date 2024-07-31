.class public Lcom/huawei/updatesdk/service/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/huawei/updatesdk/service/c/b;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/updatesdk/service/c/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/updatesdk/service/c/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/updatesdk/service/c/e;->a:Lcom/huawei/updatesdk/service/c/b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageManagerRunnable run!!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/updatesdk/service/c/e;->a:Lcom/huawei/updatesdk/service/c/b;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerRunnable"

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/updatesdk/service/c/e;->a:Lcom/huawei/updatesdk/service/c/b;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/c/b;->e()Lcom/huawei/updatesdk/service/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/huawei/updatesdk/service/c/c$b;->a:Lcom/huawei/updatesdk/service/c/c$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/updatesdk/service/c/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/updatesdk/service/c/e;->a:Lcom/huawei/updatesdk/service/c/b;

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/service/c/a;->a(Landroid/content/Context;Lcom/huawei/updatesdk/service/c/b;)V

    :cond_0
    return-void
.end method
