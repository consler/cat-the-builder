.class Lcom/huawei/hms/common/internal/HuaweiApiManager$1;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager;->disconnectService(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/common/HuaweiApi;

.field final synthetic b:Lcom/huawei/hmf/tasks/TaskCompletionSource;

.field final synthetic c:Lcom/huawei/hms/common/internal/HuaweiApiManager;


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager;Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->c:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    iput-object p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->a:Lcom/huawei/hms/common/HuaweiApi;

    iput-object p3, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->b:Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->c:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->a:Lcom/huawei/hms/common/HuaweiApi;

    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->b:Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    .line 121
    return-void
.end method
