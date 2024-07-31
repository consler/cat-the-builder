.class public Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;
.super Lname/antonsmirnov/firmata/message/Message;
.source "ProtocolVersionMessage.java"


# instance fields
.field private major:I

.field private minor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/Message;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 35
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->setMajor(I)V

    .line 37
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->setMinor(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 42
    invoke-super {p0, p1}, Lname/antonsmirnov/firmata/message/Message;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    return v1

    .line 45
    :cond_0
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    .line 46
    .local v0, "message":Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->getMajor()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->getMajor()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 48
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->getMinor()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->getMinor()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public getMajor()I
    .locals 1

    .line 13
    iget v0, p0, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 23
    iget v0, p0, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->minor:I

    return v0
.end method

.method public setMajor(I)V
    .locals 0
    .param p1, "major"    # I

    .line 17
    iput p1, p0, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->major:I

    .line 18
    return-void
.end method

.method public setMinor(I)V
    .locals 0
    .param p1, "minor"    # I

    .line 27
    iput p1, p0, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->minor:I

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ProtocolVersionMessage[major={0}, minor={1}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
