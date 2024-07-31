.class public Lname/antonsmirnov/firmata/message/SysexMessage;
.super Lname/antonsmirnov/firmata/message/Message;
.source "SysexMessage.java"


# instance fields
.field private command:I

.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/Message;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/SysexMessage;->setCommand(I)V

    .line 24
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/message/SysexMessage;->setData(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 49
    invoke-super {p0, p1}, Lname/antonsmirnov/firmata/message/Message;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    return v1

    .line 52
    :cond_0
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/SysexMessage;

    .line 53
    .local v0, "message":Lname/antonsmirnov/firmata/message/SysexMessage;
    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SysexMessage;->getCommand()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/SysexMessage;->getCommand()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 56
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SysexMessage;->getData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/SysexMessage;->getData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 58
    :cond_1
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SysexMessage;->getData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SysexMessage;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/SysexMessage;->getData()Ljava/lang/String;

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

.method public getCommand()I
    .locals 1

    .line 30
    iget v0, p0, Lname/antonsmirnov/firmata/message/SysexMessage;->command:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/SysexMessage;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(I)V
    .locals 0
    .param p1, "command"    # I

    .line 34
    iput p1, p0, Lname/antonsmirnov/firmata/message/SysexMessage;->command:I

    .line 35
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lname/antonsmirnov/firmata/message/SysexMessage;->data:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lname/antonsmirnov/firmata/message/SysexMessage;->command:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lname/antonsmirnov/firmata/message/SysexMessage;->data:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SysexMessage[command={0}, data=\"{1}\"]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
