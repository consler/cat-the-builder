.class public Lcom/huawei/hms/support/api/client/ResultConvert$FailPendingResult;
.super Lcom/huawei/hms/support/api/client/EmptyPendingResult;
.source "ResultConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/api/client/ResultConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FailPendingResult"
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/support/api/client/ResultConvert;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/ResultConvert;Lcom/huawei/hms/support/api/client/Status;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/huawei/hms/support/api/client/ResultConvert$FailPendingResult;->a:Lcom/huawei/hms/support/api/client/ResultConvert;

    invoke-direct {p0}, Lcom/huawei/hms/support/api/client/EmptyPendingResult;-><init>()V

    .line 53
    invoke-virtual {p0, p2}, Lcom/huawei/hms/support/api/client/ResultConvert$FailPendingResult;->setResult(Lcom/huawei/hms/support/api/client/Result;)V

    .line 54
    return-void
.end method
