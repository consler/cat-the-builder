.class public Lcom/huawei/updatesdk/a/b/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/huawei/updatesdk/a/b/a/a;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/a/b/a/a;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/updatesdk/a/b/a/a;->b:Lcom/huawei/updatesdk/a/b/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/a/a;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/updatesdk/a/b/a/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/huawei/updatesdk/a/b/a/a;
    .locals 2

    sget-object v0, Lcom/huawei/updatesdk/a/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/updatesdk/a/b/a/a;->b:Lcom/huawei/updatesdk/a/b/a/a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/huawei/updatesdk/a/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/updatesdk/a/b/a/a;->b:Lcom/huawei/updatesdk/a/b/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/updatesdk/a/b/a/a;

    invoke-direct {v1, p0}, Lcom/huawei/updatesdk/a/b/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/updatesdk/a/b/a/a;->b:Lcom/huawei/updatesdk/a/b/a/a;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/a/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method
