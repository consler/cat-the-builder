.class final Lcom/huawei/hmf/tasks/a/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hmf/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hmf/tasks/a/i;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/Continuation;)Lcom/huawei/hmf/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnCompleteListener<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hmf/tasks/Continuation;

.field final synthetic b:Lcom/huawei/hmf/tasks/a/i;

.field final synthetic c:Lcom/huawei/hmf/tasks/a/i;


# direct methods
.method constructor <init>(Lcom/huawei/hmf/tasks/a/i;Lcom/huawei/hmf/tasks/Continuation;Lcom/huawei/hmf/tasks/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hmf/tasks/a/i$4;->c:Lcom/huawei/hmf/tasks/a/i;

    iput-object p2, p0, Lcom/huawei/hmf/tasks/a/i$4;->a:Lcom/huawei/hmf/tasks/Continuation;

    iput-object p3, p0, Lcom/huawei/hmf/tasks/a/i$4;->b:Lcom/huawei/hmf/tasks/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/huawei/hmf/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i$4;->a:Lcom/huawei/hmf/tasks/Continuation;

    invoke-interface {v0, p1}, Lcom/huawei/hmf/tasks/Continuation;->then(Lcom/huawei/hmf/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hmf/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/huawei/hmf/tasks/a/i$4;->b:Lcom/huawei/hmf/tasks/a/i;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/a/i;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v0, Lcom/huawei/hmf/tasks/a/i$4$1;

    invoke-direct {v0, p0}, Lcom/huawei/hmf/tasks/a/i$4$1;-><init>(Lcom/huawei/hmf/tasks/a/i$4;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnCompleteListener(Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i$4;->b:Lcom/huawei/hmf/tasks/a/i;

    invoke-virtual {v0, p1}, Lcom/huawei/hmf/tasks/a/i;->a(Ljava/lang/Exception;)V

    return-void
.end method
