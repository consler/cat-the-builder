.class Lcom/huawei/hms/common/internal/BaseHmsClient$2;
.super Ljava/lang/Object;
.source "BaseHmsClient.java"

# interfaces
.implements Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/BaseHmsClient;->a(Lcom/huawei/hms/adapter/AvailableAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/common/internal/BaseHmsClient;


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/BaseHmsClient;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient$2;->a:Lcom/huawei/hms/common/internal/BaseHmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    .line 384
    if-nez p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient$2;->a:Lcom/huawei/hms/common/internal/BaseHmsClient;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->d(Lcom/huawei/hms/common/internal/BaseHmsClient;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient$2;->a:Lcom/huawei/hms/common/internal/BaseHmsClient;

    invoke-static {v0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->b(Lcom/huawei/hms/common/internal/BaseHmsClient;I)V

    .line 389
    :goto_0
    return-void
.end method
