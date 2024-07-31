.class public Lname/antonsmirnov/firmata/message/DigitalMessage;
.super Lname/antonsmirnov/firmata/message/Message;
.source "DigitalMessage.java"


# instance fields
.field private port:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/Message;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "value"    # I

    .line 18
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/DigitalMessage;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->setPort(I)V

    .line 20
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/message/DigitalMessage;->setValue(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 45
    invoke-super {p0, p1}, Lname/antonsmirnov/firmata/message/Message;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    return v1

    .line 48
    :cond_0
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/DigitalMessage;

    .line 49
    .local v0, "message":Lname/antonsmirnov/firmata/message/DigitalMessage;
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 51
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getValue()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public getPort()I
    .locals 1

    .line 26
    iget v0, p0, Lname/antonsmirnov/firmata/message/DigitalMessage;->port:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 36
    iget v0, p0, Lname/antonsmirnov/firmata/message/DigitalMessage;->value:I

    return v0
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 30
    iput p1, p0, Lname/antonsmirnov/firmata/message/DigitalMessage;->port:I

    .line 31
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 40
    iput p1, p0, Lname/antonsmirnov/firmata/message/DigitalMessage;->value:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lname/antonsmirnov/firmata/message/DigitalMessage;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lname/antonsmirnov/firmata/message/DigitalMessage;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "DigitalMessage[port={0}, value={1}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
