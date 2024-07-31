.class Lcom/huawei/hms/support/api/PendingResultImpl$3;
.super Ljava/lang/Object;
.source "PendingResultImpl.java"

# interfaces
.implements Lcom/huawei/hms/support/api/transport/DatagramTransport$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/support/api/PendingResultImpl;->setResultCallback(Landroid/os/Looper;Lcom/huawei/hms/support/api/client/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/support/api/PendingResultImpl$a;

.field final synthetic b:Lcom/huawei/hms/support/api/client/ResultCallback;

.field final synthetic c:Lcom/huawei/hms/support/api/PendingResultImpl;


# direct methods
.method constructor <init>(Lcom/huawei/hms/support/api/PendingResultImpl;Lcom/huawei/hms/support/api/PendingResultImpl$a;Lcom/huawei/hms/support/api/client/ResultCallback;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/huawei/hms/support/api/PendingResultImpl$3;->c:Lcom/huawei/hms/support/api/PendingResultImpl;

    iput-object p2, p0, Lcom/huawei/hms/support/api/PendingResultImpl$3;->a:Lcom/huawei/hms/support/api/PendingResultImpl$a;

    iput-object p3, p0, Lcom/huawei/hms/support/api/PendingResultImpl$3;->b:Lcom/huawei/hms/support/api/client/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/huawei/hms/core/aidl/IMessageEntity;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/huawei/hms/support/api/PendingResultImpl$3;->c:Lcom/huawei/hms/support/api/PendingResultImpl;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/support/api/PendingResultImpl;->a(Lcom/huawei/hms/support/api/PendingResultImpl;ILcom/huawei/hms/core/aidl/IMessageEntity;)V

    .line 316
    iget-object p1, p0, Lcom/huawei/hms/support/api/PendingResultImpl$3;->a:Lcom/huawei/hms/support/api/PendingResultImpl$a;

    iget-object p2, p0, Lcom/huawei/hms/support/api/PendingResultImpl$3;->b:Lcom/huawei/hms/support/api/client/ResultCallback;

    iget-object v0, p0, Lcom/huawei/hms/support/api/PendingResultImpl$3;->c:Lcom/huawei/hms/support/api/PendingResultImpl;

    invoke-static {v0}, Lcom/huawei/hms/support/api/PendingResultImpl;->b(Lcom/huawei/hms/support/api/PendingResultImpl;)Lcom/huawei/hms/support/api/client/Result;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/support/api/PendingResultImpl$a;->a(Lcom/huawei/hms/support/api/client/ResultCallback;Lcom/huawei/hms/support/api/client/Result;)V

    .line 317
    return-void
.end method
