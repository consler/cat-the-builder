.class Lcom/huawei/hms/support/api/ErrorResultImpl$1;
.super Ljava/lang/Object;
.source "ErrorResultImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/support/api/ErrorResultImpl;->setResultCallback(Landroid/os/Looper;Lcom/huawei/hms/support/api/client/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/support/api/client/ResultCallback;

.field final synthetic b:Lcom/huawei/hms/support/api/ErrorResultImpl;


# direct methods
.method constructor <init>(Lcom/huawei/hms/support/api/ErrorResultImpl;Lcom/huawei/hms/support/api/client/ResultCallback;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/huawei/hms/support/api/ErrorResultImpl$1;->b:Lcom/huawei/hms/support/api/ErrorResultImpl;

    iput-object p2, p0, Lcom/huawei/hms/support/api/ErrorResultImpl$1;->a:Lcom/huawei/hms/support/api/client/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/huawei/hms/support/api/ErrorResultImpl$1;->a:Lcom/huawei/hms/support/api/client/ResultCallback;

    iget-object v1, p0, Lcom/huawei/hms/support/api/ErrorResultImpl$1;->b:Lcom/huawei/hms/support/api/ErrorResultImpl;

    invoke-static {v1}, Lcom/huawei/hms/support/api/ErrorResultImpl;->a(Lcom/huawei/hms/support/api/ErrorResultImpl;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/huawei/hms/support/api/ErrorResultImpl;->a(Lcom/huawei/hms/support/api/ErrorResultImpl;I)Lcom/huawei/hms/support/api/client/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/hms/support/api/client/ResultCallback;->onResult(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
