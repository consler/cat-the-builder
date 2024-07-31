.class public final Lcom/huawei/updatesdk/service/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/huawei/updatesdk/service/a/a;


# instance fields
.field private c:Lcom/huawei/updatesdk/service/a/b;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/service/a/a;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceSessionUpdateSDK_V1"

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/service/a/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/huawei/updatesdk/service/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    return-void
.end method

.method public static a()Lcom/huawei/updatesdk/service/a/a;
    .locals 3

    sget-object v0, Lcom/huawei/updatesdk/service/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/updatesdk/service/a/a;->b:Lcom/huawei/updatesdk/service/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/updatesdk/service/a/a;

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->a()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/a/b/a/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/updatesdk/service/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/updatesdk/service/a/a;->b:Lcom/huawei/updatesdk/service/a/a;

    :cond_0
    sget-object v1, Lcom/huawei/updatesdk/service/a/a;->b:Lcom/huawei/updatesdk/service/a/a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    const-string v1, "updatesdk.lastCheckDate"

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/updatesdk/service/a/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/updatesdk/service/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()J
    .locals 4

    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    const-string v1, "updatesdk.lastCheckDate"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/updatesdk/service/a/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    const-string v1, "updatesdk.lastInitAccountTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/updatesdk/service/a/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    const-string v1, "updatesdk.lastAccountZone"

    invoke-virtual {v0, v1, p1}, Lcom/huawei/updatesdk/service/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/updatesdk/service/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()J
    .locals 4

    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    const-string v1, "updatesdk.lastInitAccountTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/updatesdk/service/a/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    invoke-virtual {v0, p1}, Lcom/huawei/updatesdk/service/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/huawei/updatesdk/service/a/a;->c:Lcom/huawei/updatesdk/service/a/b;

    const-string v1, "updatesdk.lastAccountZone"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/huawei/updatesdk/service/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
