.class public final Lcom/huawei/hms/support/api/client/Status;
.super Lcom/huawei/hms/support/api/client/Result;
.source "Status.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/support/api/client/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final CoreException:Lcom/huawei/hms/support/api/client/Status;

.field public static final FAILURE:Lcom/huawei/hms/support/api/client/Status;

.field public static final MessageNotFound:Lcom/huawei/hms/support/api/client/Status;

.field public static final RESULT_CANCELED:Lcom/huawei/hms/support/api/client/Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_DEAD_CLIENT:Lcom/huawei/hms/support/api/client/Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_INTERNAL_ERROR:Lcom/huawei/hms/support/api/client/Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_INTERRUPTED:Lcom/huawei/hms/support/api/client/Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_TIMEOUT:Lcom/huawei/hms/support/api/client/Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUCCESS:Lcom/huawei/hms/support/api/client/Status;


# instance fields
.field private final pendingIntent:Landroid/app/PendingIntent;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private statusCode:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private statusMessage:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->SUCCESS:Lcom/huawei/hms/support/api/client/Status;

    .line 33
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->FAILURE:Lcom/huawei/hms/support/api/client/Status;

    .line 36
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->RESULT_CANCELED:Lcom/huawei/hms/support/api/client/Status;

    .line 39
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->RESULT_DEAD_CLIENT:Lcom/huawei/hms/support/api/client/Status;

    .line 42
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->RESULT_INTERNAL_ERROR:Lcom/huawei/hms/support/api/client/Status;

    .line 45
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->RESULT_INTERRUPTED:Lcom/huawei/hms/support/api/client/Status;

    .line 48
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->RESULT_TIMEOUT:Lcom/huawei/hms/support/api/client/Status;

    .line 54
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0x194

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->MessageNotFound:Lcom/huawei/hms/support/api/client/Status;

    .line 59
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->CoreException:Lcom/huawei/hms/support/api/client/Status;

    .line 60
    new-instance v0, Lcom/huawei/hms/support/api/client/Status$1;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/client/Status$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/api/client/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/huawei/hms/support/api/client/Result;-><init>()V

    .line 122
    iput p1, p0, Lcom/huawei/hms/support/api/client/Status;->statusCode:I

    .line 123
    iput-object p2, p0, Lcom/huawei/hms/support/api/client/Status;->statusMessage:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    .line 125
    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 135
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 212
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 213
    return v0

    .line 214
    :cond_0
    instance-of v1, p1, Lcom/huawei/hms/support/api/client/Status;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 215
    check-cast p1, Lcom/huawei/hms/support/api/client/Status;

    .line 216
    iget v1, p0, Lcom/huawei/hms/support/api/client/Status;->statusCode:I

    iget v3, p1, Lcom/huawei/hms/support/api/client/Status;->statusCode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/huawei/hms/support/api/client/Status;->statusMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/huawei/hms/support/api/client/Status;->statusMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/huawei/hms/support/api/client/Status;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, p1}, Lcom/huawei/hms/support/api/client/Status;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 218
    :cond_2
    return v2
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/huawei/hms/support/api/client/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getStatus()Lcom/huawei/hms/support/api/client/Status;
    .locals 0

    .line 253
    return-object p0
.end method

.method public getStatusCode()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/huawei/hms/support/api/client/Status;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/huawei/hms/support/api/client/Status;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hasResolution()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 202
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/huawei/hms/support/api/client/Status;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/huawei/hms/support/api/client/Status;->statusMessage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public isInterrupted()Z
    .locals 1

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 193
    iget v0, p0, Lcom/huawei/hms/support/api/client/Status;->statusCode:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/huawei/hms/support/api/client/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 160
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{statusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/support/api/client/Status;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statusMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/support/api/client/Status;->statusMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 243
    iget v0, p0, Lcom/huawei/hms/support/api/client/Status;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Lcom/huawei/hms/support/api/client/Status;->statusMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 249
    :cond_0
    iget-object p2, p0, Lcom/huawei/hms/support/api/client/Status;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {p2, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 250
    return-void
.end method
