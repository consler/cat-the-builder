.class public final Lcom/google/android/gms/cast/CastStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final APPLICATION_NOT_FOUND:I = 0x7d4

.field public static final APPLICATION_NOT_RUNNING:I = 0x7d5

.field public static final AUTHENTICATION_FAILED:I = 0x7d0

.field public static final CANCELED:I = 0x7d2

.field public static final DEVICE_CONNECTION_SUSPENDED:I = 0x7e0

.field public static final ERROR_SERVICE_CREATION_FAILED:I = 0x898

.field public static final ERROR_SERVICE_DISCONNECTED:I = 0x899

.field public static final ERROR_STOPPING_SERVICE_FAILED:I = 0x89a

.field public static final FAILED:I = 0x834

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_REQUEST:I = 0x7d1

.field public static final MESSAGE_SEND_BUFFER_TOO_FULL:I = 0x7d7

.field public static final MESSAGE_TOO_LARGE:I = 0x7d6

.field public static final NETWORK_ERROR:I = 0x7

.field public static final NOT_ALLOWED:I = 0x7d3

.field public static final REPLACED:I = 0x837

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xf

.field public static final UNKNOWN_ERROR:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    .line 2
    if-eqz p0, :cond_5

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x898

    if-eq p0, v0, :cond_1

    const/16 v0, 0x899

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :pswitch_0
    const-string p0, "REPLACED"

    return-object p0

    .line 21
    :pswitch_1
    const-string p0, "STATUS_TIMED_OUT"

    return-object p0

    .line 22
    :pswitch_2
    const-string p0, "STATUS_CANCELLED"

    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "FAILED"

    return-object p0

    .line 14
    :pswitch_4
    const-string p0, "MESSAGE_SEND_BUFFER_TOO_FULL"

    return-object p0

    .line 13
    :pswitch_5
    const-string p0, "MESSAGE_TOO_LARGE"

    return-object p0

    .line 12
    :pswitch_6
    const-string p0, "APPLICATION_NOT_RUNNING"

    return-object p0

    .line 11
    :pswitch_7
    const-string p0, "APPLICATION_NOT_FOUND"

    return-object p0

    .line 10
    :pswitch_8
    const-string p0, "NOT_ALLOWED"

    return-object p0

    .line 9
    :pswitch_9
    const-string p0, "CANCELED"

    return-object p0

    .line 8
    :pswitch_a
    const-string p0, "INVALID_REQUEST"

    return-object p0

    .line 7
    :pswitch_b
    const-string p0, "AUTHENTICATION_FAILED"

    return-object p0

    .line 5
    :pswitch_c
    const-string p0, "TIMEOUT"

    return-object p0

    .line 6
    :pswitch_d
    const-string p0, "INTERRUPTED"

    return-object p0

    .line 18
    :pswitch_e
    const-string p0, "UNKNOWN_ERROR"

    return-object p0

    .line 20
    :cond_0
    const-string p0, "ERROR_SERVICE_DISCONNECTED"

    return-object p0

    .line 19
    :cond_1
    const-string p0, "ERROR_SERVICE_CREATION_FAILED"

    return-object p0

    .line 17
    :cond_2
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    .line 4
    :cond_3
    const-string p0, "NETWORK_ERROR"

    return-object p0

    .line 23
    :cond_4
    const-string p0, "TCP_PROBER_FAIL_TO_VERIFY_DEVICE"

    return-object p0

    .line 3
    :cond_5
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x834
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
