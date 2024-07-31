.class public Lcom/huawei/updatesdk/service/otaupdate/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/huawei/updatesdk/service/otaupdate/d;


# instance fields
.field private c:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/service/otaupdate/d;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/updatesdk/service/otaupdate/d;->b:Lcom/huawei/updatesdk/service/otaupdate/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/updatesdk/service/otaupdate/d;
    .locals 2

    sget-object v0, Lcom/huawei/updatesdk/service/otaupdate/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/updatesdk/service/otaupdate/d;->b:Lcom/huawei/updatesdk/service/otaupdate/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/updatesdk/service/otaupdate/d;

    invoke-direct {v1}, Lcom/huawei/updatesdk/service/otaupdate/d;-><init>()V

    sput-object v1, Lcom/huawei/updatesdk/service/otaupdate/d;->b:Lcom/huawei/updatesdk/service/otaupdate/d;

    :cond_0
    sget-object v1, Lcom/huawei/updatesdk/service/otaupdate/d;->b:Lcom/huawei/updatesdk/service/otaupdate/d;

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
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/d;->c:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onMarketStoreError(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/d;->c:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onMarketInstallInfo(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/d;->c:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/d;->c:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
