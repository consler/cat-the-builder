.class Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V

    .line 363
    return-void
.end method
