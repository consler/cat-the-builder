.class public Lcom/huawei/agconnect/exception/AGCNetworkException;
.super Lcom/huawei/agconnect/exception/AGCException;
.source "AGCNetworkException.java"


# static fields
.field public static final NETWORK_UNAVAILABLE:I = 0x0

.field public static final SERVER_NOT_REACH:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/huawei/agconnect/exception/AGCException;-><init>(Ljava/lang/String;I)V

    .line 17
    return-void
.end method
