.class public Lcom/huawei/hms/common/ResolvableApiException;
.super Lcom/huawei/hms/common/ApiException;
.source "ResolvableApiException.java"


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/Status;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getResolution()Landroid/app/PendingIntent;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/huawei/hms/common/ResolvableApiException;->mStatus:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/huawei/hms/common/ResolvableApiException;->mStatus:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/support/api/client/Status;->startResolutionForResult(Landroid/app/Activity;I)V

    .line 33
    return-void
.end method
