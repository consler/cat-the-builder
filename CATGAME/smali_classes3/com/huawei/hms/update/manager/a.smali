.class public final Lcom/huawei/hms/update/manager/a;
.super Ljava/lang/Object;
.source "PingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/update/manager/a$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/hms/update/manager/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/update/manager/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/huawei/hms/update/manager/a;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 25
    sput-boolean p0, Lcom/huawei/hms/update/manager/a;->a:Z

    return p0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;Ljava/lang/String;)Z
    .locals 3

    .line 42
    sget-boolean v0, Lcom/huawei/hms/update/manager/a;->a:Z

    const/4 v1, 0x1

    const-string v2, "PingTask"

    if-eqz v0, :cond_0

    .line 43
    const-string p1, "ping google return cache"

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v1

    .line 47
    :cond_0
    const-string v0, "start ping goole"

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/update/manager/a;->b:Ljava/util/concurrent/CountDownLatch;

    .line 49
    new-instance v0, Lcom/huawei/hms/update/manager/a$a;

    invoke-direct {v0, p0, p4}, Lcom/huawei/hms/update/manager/a$a;-><init>(Lcom/huawei/hms/update/manager/a;Ljava/lang/String;)V

    .line 50
    const/4 p4, 0x0

    new-array v1, p4, [Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/manager/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/update/manager/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    .line 53
    if-nez p1, :cond_1

    .line 54
    const-string p1, "await time out"

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return p4

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "await:isReachable:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/huawei/hms/update/manager/a;->a:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-boolean p1, Lcom/huawei/hms/update/manager/a;->a:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    const-string p1, "await:InterruptedException:"

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return p4
.end method
