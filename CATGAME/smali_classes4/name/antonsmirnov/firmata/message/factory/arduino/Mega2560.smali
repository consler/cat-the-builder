.class public Lname/antonsmirnov/firmata/message/factory/arduino/Mega2560;
.super Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;
.source "Mega2560.java"


# static fields
.field public static final MAX_PIN:I = 0x36


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 14
    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lname/antonsmirnov/firmata/message/factory/arduino/Mega2560;->arrayFromTo(II)[I

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lname/antonsmirnov/firmata/message/factory/arduino/Mega2560;->arrayFromTo(II)[I

    move-result-object v2

    const/16 v3, 0x2c

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lname/antonsmirnov/firmata/message/factory/arduino/Mega2560;->arrayFromTo(II)[I

    move-result-object v3

    invoke-static {v2, v3}, Lname/antonsmirnov/firmata/message/factory/arduino/Mega2560;->union([I[I)[I

    move-result-object v2

    const/16 v3, 0x36

    invoke-direct {p0, v0, v3, v1, v2}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;-><init>(II[I[I)V

    .line 15
    return-void
.end method
