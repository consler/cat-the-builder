.class public abstract Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;
.super Ljava/lang/Object;
.source "BoardMessageFactory.java"

# interfaces
.implements Lname/antonsmirnov/firmata/message/factory/MessageFactory;


# static fields
.field public static final MIN_PIN:I


# instance fields
.field protected analogInPins:[I

.field protected analogOutPins:[I

.field protected maxPin:I

.field protected minPin:I


# direct methods
.method public constructor <init>(II[I[I)V
    .locals 0
    .param p1, "minPin"    # I
    .param p2, "maxPin"    # I
    .param p3, "analogInPins"    # [I
    .param p4, "analogOutPins"    # [I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->minPin:I

    .line 53
    iput p2, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->maxPin:I

    .line 54
    iput-object p3, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->analogInPins:[I

    .line 55
    iput-object p4, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->analogOutPins:[I

    .line 58
    invoke-static {p3}, Ljava/util/Arrays;->sort([I)V

    .line 59
    invoke-static {p4}, Ljava/util/Arrays;->sort([I)V

    .line 60
    return-void
.end method

.method protected static arrayFromTo(II)[I
    .locals 3
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 44
    sub-int v0, p1, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 45
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 46
    add-int/lit8 v2, p0, 0x1

    .end local p0    # "from":I
    .local v2, "from":I
    aput p0, v0, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    move p0, v2

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    .end local v2    # "from":I
    .restart local p0    # "from":I
    :cond_0
    return-object v0
.end method

.method protected static union([I[I)[I
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 37
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 38
    .local v0, "array":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-object v0
.end method

.method private validateAnalogValue(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 135
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 137
    return-void

    .line 136
    :cond_0
    new-instance v0, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;

    const-string v1, "Allowed analog values are [0-255]"

    invoke-direct {v0, v1}, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public analogRead(I)Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;
    .locals 2
    .param p1, "pin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validatePin(I)V

    .line 147
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validateAnalogIn(I)V

    .line 149
    new-instance v0, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;-><init>(IZ)V

    return-object v0
.end method

.method public analogWrite(II)Lname/antonsmirnov/firmata/message/AnalogMessage;
    .locals 1
    .param p1, "pin"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validatePin(I)V

    .line 176
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validateAnalogOut(I)V

    .line 177
    invoke-direct {p0, p2}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validateAnalogValue(I)V

    .line 179
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    invoke-direct {v0, p1, p2}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>(II)V

    return-object v0
.end method

.method protected arrayToString([I)Ljava/lang/String;
    .locals 3
    .param p1, "array"    # [I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 110
    if-lez v1, :cond_0

    .line 111
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public digitalRead(I)Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validatePort(I)V

    .line 142
    new-instance v0, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;-><init>(IZ)V

    return-object v0
.end method

.method public digitalWrite(II)Lname/antonsmirnov/firmata/message/DigitalMessage;
    .locals 1
    .param p1, "port"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validatePort(I)V

    .line 169
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validateDigitalMask(I)V

    .line 171
    new-instance v0, Lname/antonsmirnov/firmata/message/DigitalMessage;

    invoke-direct {v0, p1, p2}, Lname/antonsmirnov/firmata/message/DigitalMessage;-><init>(II)V

    return-object v0
.end method

.method public getAnalogInPins()[I
    .locals 1

    .line 29
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->analogInPins:[I

    return-object v0
.end method

.method public getAnalogOutPins()[I
    .locals 1

    .line 33
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->analogOutPins:[I

    return-object v0
.end method

.method public getMaxPin()I
    .locals 1

    .line 25
    iget v0, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->maxPin:I

    return v0
.end method

.method public getMinPin()I
    .locals 1

    .line 21
    iget v0, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->minPin:I

    return v0
.end method

.method public isAnalogIn(I)Z
    .locals 2
    .param p1, "pin"    # I

    .line 84
    :try_start_0
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validateAnalogIn(I)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/message/factory/MessageValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
    const/4 v1, 0x0

    return v1
.end method

.method public isAnalogOut(I)Z
    .locals 2
    .param p1, "pin"    # I

    .line 100
    :try_start_0
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validateAnalogOut(I)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/message/factory/MessageValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v0, 0x1

    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
    const/4 v1, 0x0

    return v1
.end method

.method public pinMode(II)Lname/antonsmirnov/firmata/message/SetPinModeMessage;
    .locals 1
    .param p1, "pin"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validatePin(I)V

    .line 154
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validateMode(I)V

    .line 157
    sget-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->ANALOG:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->getMode()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validateAnalogIn(I)V

    .line 161
    :cond_0
    sget-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->PWM:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->getMode()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 162
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->validateAnalogOut(I)V

    .line 164
    :cond_1
    new-instance v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    invoke-direct {v0, p1, p2}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;-><init>(II)V

    return-object v0
.end method

.method protected validateAnalogIn(I)V
    .locals 5
    .param p1, "pin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->analogInPins:[I

    .line 77
    .local v0, "array":[I
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v1, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->arrayToString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Allowed analog in pins are [{0}]"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected validateAnalogOut(I)V
    .locals 5
    .param p1, "pin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->analogOutPins:[I

    .line 93
    .local v0, "array":[I
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    new-instance v1, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->arrayToString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Allowed analog out (PWM) pins are [{0}]"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected validateDigitalMask(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 130
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 132
    return-void

    .line 131
    :cond_0
    new-instance v0, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;

    const-string v1, "Allowed digital mask values are [0-255]"

    invoke-direct {v0, v1}, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected validateDigitalValue(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 125
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;

    const-string v1, "Allowed digital values are [0; 1]"

    invoke-direct {v0, v1}, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    :goto_0
    return-void
.end method

.method protected validateMode(I)V
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->find(I)Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    move-result-object v0

    .line 119
    .local v0, "enumValue":Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;
    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 120
    :cond_0
    new-instance v1, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;

    .line 121
    invoke-static {}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->values()[Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    move-result-object v2

    const-string v3, "Allowed modes are [{0}]"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected validatePin(I)V
    .locals 4
    .param p1, "pin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->minPin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->maxPin:I

    if-gt p1, v0, :cond_0

    .line 66
    return-void

    .line 64
    :cond_0
    new-instance v0, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->minPin:I

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->maxPin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Allowed pin values are [{0}-{1}]"

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected validatePort(I)V
    .locals 6
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;->maxPin:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 70
    .local v0, "ports":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 73
    return-void

    .line 71
    :cond_0
    new-instance v2, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Allowed port values are [{0}-{1}]"

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lname/antonsmirnov/firmata/message/factory/MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
