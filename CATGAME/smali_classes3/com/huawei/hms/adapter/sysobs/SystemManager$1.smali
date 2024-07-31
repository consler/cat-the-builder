.class final Lcom/huawei/hms/adapter/sysobs/SystemManager$1;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Lcom/huawei/hms/adapter/sysobs/SystemNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/adapter/sysobs/SystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/adapter/sysobs/SystemObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$1;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public notifyObservers(I)V
    .locals 3

    .line 71
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    invoke-interface {v2, p1}, Lcom/huawei/hms/adapter/sysobs/SystemObserver;->onUpdateResult(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 79
    :cond_1
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyObservers(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .line 58
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    invoke-interface {v2, p1, p2}, Lcom/huawei/hms/adapter/sysobs/SystemObserver;->onSolutionResult(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 66
    :cond_1
    monitor-exit v0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerObserver(Lcom/huawei/hms/adapter/sysobs/SystemObserver;)V
    .locals 2

    .line 39
    if-nez p1, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$1;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterObserver(Lcom/huawei/hms/adapter/sysobs/SystemObserver;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$1;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
