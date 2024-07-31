.class public Lcom/huawei/hms/core/aidl/ResponseHeader;
.super Ljava/lang/Object;
.source "ResponseHeader.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field protected statusCode:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/huawei/hms/core/aidl/ResponseHeader;->statusCode:I

    .line 36
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/huawei/hms/core/aidl/ResponseHeader;->statusCode:I

    return v0
.end method
