.class public Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;
.super Lname/antonsmirnov/firmata/message/Message;
.source "ReportDigitalPortMessage.java"


# instance fields
.field private enable:Z

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/Message;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "enable"    # Z

    .line 15
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->setPort(I)V

    .line 17
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->setEnable(Z)V

    .line 18
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

    check-cast v0, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;

    .line 46
    .local v0, "message":Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 48
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->isEnable()Z

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->isEnable()Z

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

    .line 23
    iget v0, p0, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->port:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 37
    iput-boolean p1, p0, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->enable:Z

    .line 38
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 27
    iput p1, p0, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->port:I

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->enable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ReportDigitalPortMessage[port={0}, enable={1}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
