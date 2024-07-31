.class public Lcom/huawei/updatesdk/service/c/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/service/c/g$a;
    }
.end annotation


# static fields
.field protected static final a:Lcom/huawei/updatesdk/service/c/d;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/updatesdk/service/c/d;

    invoke-direct {v0}, Lcom/huawei/updatesdk/service/c/d;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/service/c/g;->a:Lcom/huawei/updatesdk/service/c/d;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/service/c/g;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/huawei/updatesdk/service/c/b;
    .locals 0

    invoke-static {p0}, Lcom/huawei/updatesdk/service/c/g;->b(Ljava/lang/String;)Lcom/huawei/updatesdk/service/c/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/huawei/updatesdk/service/c/d$a;)Lcom/huawei/updatesdk/service/c/b;
    .locals 1

    sget-object v0, Lcom/huawei/updatesdk/service/c/g;->a:Lcom/huawei/updatesdk/service/c/d;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/updatesdk/service/c/d;->a(Ljava/lang/String;Lcom/huawei/updatesdk/service/c/d$a;)Lcom/huawei/updatesdk/service/c/b;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(II)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "INSTALL_STATE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "INSTALL_TYPE"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/huawei/updatesdk/a/b/c/b;->a(Landroid/content/Intent;)Lcom/huawei/updatesdk/a/b/c/b;

    move-result-object p0

    invoke-static {}, Lcom/huawei/updatesdk/service/b/c;->a()Lcom/huawei/updatesdk/service/b/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/huawei/updatesdk/service/b/c;->c(Lcom/huawei/updatesdk/a/b/c/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/huawei/updatesdk/service/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/huawei/updatesdk/service/c/b;
    .locals 1

    sget-object v0, Lcom/huawei/updatesdk/service/c/d$a;->a:Lcom/huawei/updatesdk/service/c/d$a;

    invoke-static {p0, v0}, Lcom/huawei/updatesdk/service/c/g;->a(Ljava/lang/String;Lcom/huawei/updatesdk/service/c/d$a;)Lcom/huawei/updatesdk/service/c/b;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/huawei/updatesdk/service/c/g;

    monitor-enter v0

    :try_start_0
    const-string v1, "PackageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process:processType=install,path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isNow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "PackageService"

    const-string p1, "install failed!!!path is empty!!!!"

    invoke-static {p0, p1}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/huawei/updatesdk/service/c/b;

    invoke-direct {v1, p1, p0}, Lcom/huawei/updatesdk/service/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/huawei/updatesdk/service/c/c$a;->b:Lcom/huawei/updatesdk/service/c/c$a;

    invoke-virtual {v1, p0}, Lcom/huawei/updatesdk/service/c/b;->a(Lcom/huawei/updatesdk/service/c/c$a;)V

    invoke-virtual {v1, v3}, Lcom/huawei/updatesdk/service/c/b;->a(Z)V

    sget-object p0, Lcom/huawei/updatesdk/service/c/g;->a:Lcom/huawei/updatesdk/service/c/d;

    invoke-virtual {p0, p1, v1}, Lcom/huawei/updatesdk/service/c/d;->a(Ljava/lang/String;Lcom/huawei/updatesdk/service/c/b;)Lcom/huawei/updatesdk/service/c/b;

    sget-object p0, Lcom/huawei/updatesdk/service/c/c$b;->a:Lcom/huawei/updatesdk/service/c/c$b;

    invoke-virtual {v1, p0}, Lcom/huawei/updatesdk/service/c/b;->a(Lcom/huawei/updatesdk/service/c/c$b;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "install|pkg:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/huawei/updatesdk/service/c/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|path:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/huawei/updatesdk/service/c/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/huawei/updatesdk/service/c/e;

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->a()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/updatesdk/a/b/a/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/huawei/updatesdk/service/c/e;-><init>(Landroid/content/Context;Lcom/huawei/updatesdk/service/c/b;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
