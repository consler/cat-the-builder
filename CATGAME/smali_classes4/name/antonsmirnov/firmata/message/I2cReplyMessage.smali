.class public Lname/antonsmirnov/firmata/message/I2cReplyMessage;
.super Lname/antonsmirnov/firmata/message/SysexMessage;
.source "I2cReplyMessage.java"


# static fields
.field public static final COMMAND:I = 0x77

.field protected static formatHelper:Lname/antonsmirnov/firmata/FormatHelper;


# instance fields
.field private binaryData:[I

.field private register:I

.field private slaveAddress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lname/antonsmirnov/firmata/FormatHelper;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/FormatHelper;-><init>()V

    sput-object v0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->formatHelper:Lname/antonsmirnov/firmata/FormatHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    const/16 v0, 0x77

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>(ILjava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(II[I)V
    .locals 0
    .param p1, "slaveAddress"    # I
    .param p2, "register"    # I
    .param p3, "binaryData"    # [I

    .line 21
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->setSlaveAddress(I)V

    .line 23
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->setRegister(I)V

    .line 24
    invoke-virtual {p0, p3}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->setBinaryData([I)V

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 59
    invoke-super {p0, p1}, Lname/antonsmirnov/firmata/message/SysexMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    return v1

    .line 62
    :cond_0
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;

    .line 63
    .local v0, "message":Lname/antonsmirnov/firmata/message/I2cReplyMessage;
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->getSlaveAddress()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->getSlaveAddress()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 65
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->getRegister()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->getRegister()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 67
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->getBinaryData()[I

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->getBinaryData()[I

    move-result-object v2

    if-eqz v2, :cond_2

    .line 69
    :cond_1
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->getBinaryData()[I

    move-result-object v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->getBinaryData()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

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

.method public getBinaryData()[I
    .locals 1

    .line 50
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->binaryData:[I

    return-object v0
.end method

.method public getRegister()I
    .locals 1

    .line 40
    iget v0, p0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->register:I

    return v0
.end method

.method public getSlaveAddress()I
    .locals 1

    .line 30
    iget v0, p0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->slaveAddress:I

    return v0
.end method

.method public setBinaryData([I)V
    .locals 0
    .param p1, "binaryData"    # [I

    .line 54
    iput-object p1, p0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->binaryData:[I

    .line 55
    return-void
.end method

.method public setRegister(I)V
    .locals 0
    .param p1, "register"    # I

    .line 44
    iput p1, p0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->register:I

    .line 45
    return-void
.end method

.method public setSlaveAddress(I)V
    .locals 0
    .param p1, "slaveAddress"    # I

    .line 34
    iput p1, p0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->slaveAddress:I

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->formatHelper:Lname/antonsmirnov/firmata/FormatHelper;

    iget v2, p0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->slaveAddress:I

    .line 78
    invoke-virtual {v1, v2}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinary(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->register:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->formatHelper:Lname/antonsmirnov/firmata/FormatHelper;

    iget-object v2, p0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->binaryData:[I

    invoke-virtual {v1, v2}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinaryData([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 77
    const-string v1, "I2cReplyMessage[slaveAddress={0}, register={1}, binaryData={2}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
