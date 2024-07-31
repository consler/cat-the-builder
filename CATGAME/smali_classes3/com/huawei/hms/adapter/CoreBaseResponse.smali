.class public Lcom/huawei/hms/adapter/CoreBaseResponse;
.super Ljava/lang/Object;
.source "CoreBaseResponse.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field public intent:Landroid/content/Intent;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private jsonBody:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private jsonHeader:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field public pendingIntent:Landroid/app/PendingIntent;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getJsonBody()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->jsonBody:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonHeader()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->jsonHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->intent:Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public setJsonBody(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->jsonBody:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setJsonHeader(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->jsonHeader:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->pendingIntent:Landroid/app/PendingIntent;

    .line 55
    return-void
.end method
