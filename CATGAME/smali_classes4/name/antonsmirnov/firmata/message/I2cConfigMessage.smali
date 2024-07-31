.class public Lname/antonsmirnov/firmata/message/I2cConfigMessage;
.super Lname/antonsmirnov/firmata/message/SysexMessage;
.source "I2cConfigMessage.java"


# static fields
.field public static final COMMAND:I = 0x78


# instance fields
.field private delay:I

.field private on:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    const/16 v0, 0x78

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>(ILjava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 30
    iget v0, p0, Lname/antonsmirnov/firmata/message/I2cConfigMessage;->delay:I

    return v0
.end method

.method public isOn()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lname/antonsmirnov/firmata/message/I2cConfigMessage;->on:Z

    return v0
.end method

.method public setDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .line 34
    iput p1, p0, Lname/antonsmirnov/firmata/message/I2cConfigMessage;->delay:I

    .line 35
    return-void
.end method

.method public setOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 24
    iput-boolean p1, p0, Lname/antonsmirnov/firmata/message/I2cConfigMessage;->on:Z

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lname/antonsmirnov/firmata/message/I2cConfigMessage;->on:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lname/antonsmirnov/firmata/message/I2cConfigMessage;->delay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "I2cConfigMessage[on={0}, delay={1}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
