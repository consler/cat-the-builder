.class public Lname/antonsmirnov/firmata/message/I2cRequestMessage;
.super Lname/antonsmirnov/firmata/message/SysexMessage;
.source "I2cRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;
    }
.end annotation


# static fields
.field public static final COMMAND:I = 0x76

.field protected static formatHelper:Lname/antonsmirnov/firmata/FormatHelper;


# instance fields
.field private binaryData:[I

.field private mode:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

.field private slaveAddress:I

.field private tenBitsMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lname/antonsmirnov/firmata/FormatHelper;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/FormatHelper;-><init>()V

    sput-object v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->formatHelper:Lname/antonsmirnov/firmata/FormatHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    const/16 v0, 0x76

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>(ILjava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getBinaryData()[I
    .locals 1

    .line 93
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->binaryData:[I

    return-object v0
.end method

.method public getMode()Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;
    .locals 1

    .line 83
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->mode:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    return-object v0
.end method

.method public getSlaveAddress()I
    .locals 1

    .line 22
    iget v0, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->slaveAddress:I

    return v0
.end method

.method public isTenBitsMode()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->tenBitsMode:Z

    return v0
.end method

.method public setBinaryData([I)V
    .locals 0
    .param p1, "binaryData"    # [I

    .line 99
    iput-object p1, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->binaryData:[I

    .line 100
    return-void
.end method

.method public setMode(Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;)V
    .locals 0
    .param p1, "mode"    # Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    .line 87
    iput-object p1, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->mode:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    .line 88
    return-void
.end method

.method public setSlaveAddress(I)V
    .locals 0
    .param p1, "slaveAddress"    # I

    .line 26
    iput p1, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->slaveAddress:I

    .line 27
    return-void
.end method

.method public setTenBitsMode(Z)V
    .locals 0
    .param p1, "tenBitsMode"    # Z

    .line 36
    iput-boolean p1, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->tenBitsMode:Z

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->formatHelper:Lname/antonsmirnov/firmata/FormatHelper;

    iget v2, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->slaveAddress:I

    .line 105
    invoke-virtual {v1, v2}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinary(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->tenBitsMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->mode:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->binaryData:[I

    if-eqz v1, :cond_0

    sget-object v2, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->formatHelper:Lname/antonsmirnov/firmata/FormatHelper;

    invoke-virtual {v2, v1}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinaryData([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 104
    const-string v1, "I2cRequestMessage[slaveAddress={0}, 10bitsMode={1}, mode={2}, binaryData={3}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
