.class public Lname/antonsmirnov/firmata/message/ServoConfigMessage;
.super Lname/antonsmirnov/firmata/message/SysexMessage;
.source "ServoConfigMessage.java"


# static fields
.field public static final COMMAND:I = 0x70


# instance fields
.field private angle:I

.field private maxPulse:I

.field private minPulse:I

.field private pin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    const/16 v0, 0x70

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>(ILjava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    move-object v1, p1

    check-cast v1, Lname/antonsmirnov/firmata/message/ServoConfigMessage;

    .line 66
    .local v1, "message":Lname/antonsmirnov/firmata/message/ServoConfigMessage;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->getPin()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->getPin()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 63
    .end local v1    # "message":Lname/antonsmirnov/firmata/message/ServoConfigMessage;
    :cond_2
    :goto_0
    return v0
.end method

.method public getAngle()I
    .locals 1

    .line 50
    iget v0, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->angle:I

    return v0
.end method

.method public getMaxPulse()I
    .locals 1

    .line 40
    iget v0, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->maxPulse:I

    return v0
.end method

.method public getMinPulse()I
    .locals 1

    .line 30
    iget v0, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->minPulse:I

    return v0
.end method

.method public getPin()I
    .locals 1

    .line 20
    iget v0, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->pin:I

    return v0
.end method

.method public setAngle(I)V
    .locals 0
    .param p1, "angle"    # I

    .line 57
    iput p1, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->angle:I

    .line 58
    return-void
.end method

.method public setMaxPulse(I)V
    .locals 0
    .param p1, "maxPulse"    # I

    .line 44
    iput p1, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->maxPulse:I

    .line 45
    return-void
.end method

.method public setMinPulse(I)V
    .locals 0
    .param p1, "minPulse"    # I

    .line 34
    iput p1, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->minPulse:I

    .line 35
    return-void
.end method

.method public setPin(I)V
    .locals 0
    .param p1, "pin"    # I

    .line 24
    iput p1, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->pin:I

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->pin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->minPulse:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->maxPulse:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lname/antonsmirnov/firmata/message/ServoConfigMessage;->angle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ServoConfigMessage[pin={0}, minPulse={1}, maxPulse={2}, angle={3}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
