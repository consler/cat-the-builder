.class Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->onConnectionSuspended(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->b:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iput p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->b:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iget v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->a:I

    invoke-static {v0, v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V

    .line 393
    return-void
.end method
