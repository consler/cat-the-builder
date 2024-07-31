.class final Lcom/huawei/hmf/tasks/a/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hmf/tasks/a/h;->onComplete(Lcom/huawei/hmf/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hmf/tasks/Task;

.field final synthetic b:Lcom/huawei/hmf/tasks/a/h;


# direct methods
.method constructor <init>(Lcom/huawei/hmf/tasks/a/h;Lcom/huawei/hmf/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hmf/tasks/a/h$1;->b:Lcom/huawei/hmf/tasks/a/h;

    iput-object p2, p0, Lcom/huawei/hmf/tasks/a/h$1;->a:Lcom/huawei/hmf/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/h$1;->b:Lcom/huawei/hmf/tasks/a/h;

    invoke-static {v0}, Lcom/huawei/hmf/tasks/a/h;->a(Lcom/huawei/hmf/tasks/a/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/h$1;->b:Lcom/huawei/hmf/tasks/a/h;

    invoke-static {v1}, Lcom/huawei/hmf/tasks/a/h;->b(Lcom/huawei/hmf/tasks/a/h;)Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/h$1;->b:Lcom/huawei/hmf/tasks/a/h;

    invoke-static {v1}, Lcom/huawei/hmf/tasks/a/h;->b(Lcom/huawei/hmf/tasks/a/h;)Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hmf/tasks/a/h$1;->a:Lcom/huawei/hmf/tasks/Task;

    invoke-virtual {v2}, Lcom/huawei/hmf/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huawei/hmf/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
