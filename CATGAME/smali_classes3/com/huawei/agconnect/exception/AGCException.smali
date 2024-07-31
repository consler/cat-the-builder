.class public abstract Lcom/huawei/agconnect/exception/AGCException;
.super Ljava/lang/Exception;
.source "AGCException.java"


# instance fields
.field private code:I

.field private errMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "meg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput p2, p0, Lcom/huawei/agconnect/exception/AGCException;->code:I

    .line 14
    iput-object p1, p0, Lcom/huawei/agconnect/exception/AGCException;->errMsg:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/huawei/agconnect/exception/AGCException;->code:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/huawei/agconnect/exception/AGCException;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/agconnect/exception/AGCException;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/agconnect/exception/AGCException;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
