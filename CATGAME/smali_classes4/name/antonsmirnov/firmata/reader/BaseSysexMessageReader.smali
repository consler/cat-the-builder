.class public abstract Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;
.super Ljava/lang/Object;
.source "BaseSysexMessageReader.java"

# interfaces
.implements Lname/antonsmirnov/firmata/reader/IMessageReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConcreteSysexMessage:",
        "Lname/antonsmirnov/firmata/message/SysexMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lname/antonsmirnov/firmata/reader/IMessageReader<",
        "TConcreteSysexMessage;>;"
    }
.end annotation


# instance fields
.field protected isReading:Z

.field protected message:Lname/antonsmirnov/firmata/message/SysexMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TConcreteSysexMessage;"
        }
    .end annotation
.end field

.field private sysexCommand:Ljava/lang/Byte;


# direct methods
.method public constructor <init>(Ljava/lang/Byte;)V
    .locals 0
    .param p1, "sysexCommand"    # Ljava/lang/Byte;

    .line 16
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->sysexCommand:Ljava/lang/Byte;

    .line 18
    return-void
.end method


# virtual methods
.method protected abstract buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/SysexMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TConcreteSysexMessage;"
        }
    .end annotation
.end method

.method public canRead([BII)Z
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "bufferLength"    # I
    .param p3, "command"    # I

    .line 21
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    aget-byte v2, p1, v0

    const/16 v3, -0x10

    if-eq v2, v3, :cond_2

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->sysexCommand:Ljava/lang/Byte;

    if-eqz v2, :cond_2

    aget-byte v3, p1, v1

    .line 23
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->sysexCommand:Ljava/lang/Byte;

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method protected extractIntArrayFromBuffer([BII)[I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 76
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    invoke-virtual {p0, p2, p3}, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->validateSysexDataLength(II)V

    .line 77
    invoke-static {p1, p2, p3}, Lname/antonsmirnov/firmata/BytesHelper;->DECODE_INT_ARRAY([BII)[I

    move-result-object v0

    return-object v0
.end method

.method protected extractStringFromBuffer([BII)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 70
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    invoke-virtual {p0, p2, p3}, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->validateSysexDataLength(II)V

    .line 71
    invoke-static {p1, p2, p3}, Lname/antonsmirnov/firmata/BytesHelper;->DECODE_STRING([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finishedReading()Z
    .locals 1

    .line 60
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    iget-boolean v0, p0, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->isReading:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic getMessage()Lname/antonsmirnov/firmata/message/Message;
    .locals 1

    .line 11
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->getMessage()Lname/antonsmirnov/firmata/message/SysexMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lname/antonsmirnov/firmata/message/SysexMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TConcreteSysexMessage;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    iget-object v0, p0, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->message:Lname/antonsmirnov/firmata/message/SysexMessage;

    return-object v0
.end method

.method public read([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 37
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p1, v0

    .line 39
    .local v0, "incomingByte":B
    const/16 v1, -0x9

    if-ne v0, v1, :cond_0

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->isReading:Z

    .line 42
    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/SysexMessage;

    move-result-object v1

    iput-object v1, p0, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->message:Lname/antonsmirnov/firmata/message/SysexMessage;

    .line 44
    :cond_0
    return-void
.end method

.method public startReading()V
    .locals 1

    .line 31
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;->isReading:Z

    .line 32
    return-void
.end method

.method protected validateSysexDataLength(II)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 64
    .local p0, "this":Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;, "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<TConcreteSysexMessage;>;"
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sysex command data length should be even"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
