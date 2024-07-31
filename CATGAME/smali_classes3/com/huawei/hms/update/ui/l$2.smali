.class Lcom/huawei/hms/update/ui/l$2;
.super Ljava/lang/Object;
.source "UpdateWizard.java"

# interfaces
.implements Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/a/a/b;

.field final synthetic b:Lcom/huawei/hms/update/ui/l;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/ui/l;Lcom/huawei/hms/update/a/a/b;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/huawei/hms/update/ui/l$2;->b:Lcom/huawei/hms/update/ui/l;

    iput-object p2, p0, Lcom/huawei/hms/update/ui/l$2;->a:Lcom/huawei/hms/update/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarketInstallInfo(Landroid/content/Intent;)V
    .locals 0

    .line 410
    return-void
.end method

.method public onMarketStoreError(I)V
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMarketStoreError responseCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateWizard"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public onUpdateInfo(Landroid/content/Intent;)V
    .locals 2

    .line 402
    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/huawei/hms/update/ui/l$2;->b:Lcom/huawei/hms/update/ui/l;

    iget-object v1, p0, Lcom/huawei/hms/update/ui/l$2;->a:Lcom/huawei/hms/update/a/a/b;

    invoke-static {v0, p1, v1}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/ui/l;Landroid/content/Intent;Lcom/huawei/hms/update/a/a/b;)V

    .line 405
    :cond_0
    return-void
.end method

.method public onUpdateStoreError(I)V
    .locals 2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateStoreError responseCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateWizard"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method
