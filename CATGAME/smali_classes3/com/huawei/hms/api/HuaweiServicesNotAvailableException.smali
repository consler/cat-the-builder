.class public final Lcom/huawei/hms/api/HuaweiServicesNotAvailableException;
.super Ljava/lang/Exception;
.source "HuaweiServicesNotAvailableException.java"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    iput p1, p0, Lcom/huawei/hms/api/HuaweiServicesNotAvailableException;->errorCode:I

    .line 18
    return-void
.end method
