.class public Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;
.super Lname/antonsmirnov/firmata/message/SysexMessage;
.source "FirmwareVersionMessage.java"


# instance fields
.field private major:I

.field private minor:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;-><init>()V

    .line 16
    invoke-virtual {p0, p3}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->setName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->setMajor(I)V

    .line 18
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->setMinor(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 53
    invoke-super {p0, p1}, Lname/antonsmirnov/firmata/message/SysexMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    return v1

    .line 56
    :cond_0
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    .line 57
    .local v0, "message":Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;
    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getMajor()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getMajor()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 59
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getMinor()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getMinor()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 61
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 63
    :cond_1
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v1
.end method

.method public getMajor()I
    .locals 1

    .line 24
    iget v0, p0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 34
    iget v0, p0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->minor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setMajor(I)V
    .locals 0
    .param p1, "major"    # I

    .line 28
    iput p1, p0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->major:I

    .line 29
    return-void
.end method

.method public setMinor(I)V
    .locals 0
    .param p1, "minor"    # I

    .line 38
    iput p1, p0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->minor:I

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->name:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "FirmwareVersionMessage[major={0}, minor={1}, name=\'\'{2}\'\']"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
