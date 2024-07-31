.class public Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;
.super Ljava/lang/Object;
.source "EV3Command.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;


# instance fields
.field private commandData:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;IILorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V
    .locals 4
    .param p1, "commandCounter"    # S
    .param p2, "commandType"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;
    .param p3, "globalVars"    # I
    .param p4, "localVars"    # I
    .param p5, "commandByte"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    .line 50
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    .line 56
    .local v0, "reservationByte1":B
    shl-int/lit8 v1, p4, 0x2

    shr-int/lit8 v2, p3, 0x8

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 57
    .local v1, "reservationByte2":B
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 58
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 60
    iget-object v2, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->getByte()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(SLorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;)V
    .locals 2
    .param p1, "commandCounter"    # S
    .param p2, "commandType"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;
    .param p3, "commandByte"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    .line 41
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 1
    .param p1, "data"    # B

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    return-void
.end method

.method public append(I)V
    .locals 1
    .param p1, "data"    # I

    .line 72
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 73
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 74
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 75
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 76
    return-void
.end method

.method public append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;)V
    .locals 2
    .param p1, "commandCode"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    .line 79
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->getByte()B

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V

    .line 80
    return-void
.end method

.method public append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;I)V
    .locals 4
    .param p1, "paramFormat"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;
    .param p2, "data"    # I

    .line 96
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    if-ne p1, v0, :cond_1

    .line 97
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->getByte()B

    move-result v0

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_TYPE_CONSTANT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 98
    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_MAX:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 99
    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    .line 101
    .local v0, "byteToAppend":I
    if-ltz p2, :cond_0

    .line 102
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_SIGN_POSITIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 104
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_SIGN_NEGATIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    .line 107
    :goto_0
    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    goto :goto_1

    .line 111
    .end local v0    # "byteToAppend":I
    :cond_1
    if-ltz p2, :cond_2

    const/16 v0, 0x7f

    if-le p2, v0, :cond_3

    :cond_2
    if-gez p2, :cond_4

    const/16 v0, 0xff

    if-gt p2, v0, :cond_4

    .line 113
    :cond_3
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->getByte()B

    move-result v0

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_TYPE_CONSTANT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 114
    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_ONE_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 115
    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    .line 117
    .local v0, "controlByte":I
    and-int/lit16 v1, p2, 0xff

    .line 119
    .local v1, "byteToAppend":I
    int-to-byte v2, v0

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 120
    int-to-byte v2, v1

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    move v0, v1

    goto :goto_1

    .line 124
    .end local v0    # "controlByte":I
    .end local v1    # "byteToAppend":I
    :cond_4
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->getByte()B

    move-result v0

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_TYPE_CONSTANT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 125
    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_TWO_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 126
    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    .line 128
    .restart local v0    # "controlByte":I
    and-int/lit16 v1, p2, 0xff

    .line 129
    .restart local v1    # "byteToAppend":I
    const v2, 0xff00

    and-int/2addr v2, p2

    shr-int/lit8 v2, v2, 0x8

    .line 131
    .local v2, "secondByteToAppend":I
    int-to-byte v3, v0

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 132
    int-to-byte v3, v1

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 133
    int-to-byte v3, v2

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    move v0, v1

    .line 136
    .end local v1    # "byteToAppend":I
    .end local v2    # "secondByteToAppend":I
    .local v0, "byteToAppend":I
    :goto_1
    return-void
.end method

.method public append(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;I)V
    .locals 2
    .param p1, "variableScope"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;
    .param p2, "bytesToReserve"    # I

    .line 84
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->getByte()B

    move-result v0

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_TYPE_VARIABLE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 85
    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    .line 86
    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_MAX:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 87
    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_SIGN_POSITIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 88
    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->getByte()B

    move-result v1

    or-int/2addr v0, v1

    .line 90
    .local v0, "byteToAppend":I
    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->append(B)V

    .line 91
    return-void
.end method

.method public append([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 69
    return-void
.end method

.method public getLength()I
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public getRawCommand()[B
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toHexString(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;

    .line 148
    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Command;->getRawCommand()[B

    move-result-object v0

    .line 149
    .local v0, "rawBytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "commandHexString":Ljava/lang/StringBuilder;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 152
    const-string v2, "0"

    return-object v2

    .line 155
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 156
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
