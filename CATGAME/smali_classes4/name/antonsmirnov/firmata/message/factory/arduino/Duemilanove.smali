.class public Lname/antonsmirnov/firmata/message/factory/arduino/Duemilanove;
.super Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;
.source "Duemilanove.java"


# static fields
.field public static final MAX_PIN:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lname/antonsmirnov/firmata/message/factory/arduino/Duemilanove;->arrayFromTo(II)[I

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/16 v3, 0xd

    invoke-direct {p0, v0, v3, v1, v2}, Lname/antonsmirnov/firmata/message/factory/BoardMessageFactory;-><init>(II[I[I)V

    .line 15
    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x6
        0x9
        0xa
        0xb
    .end array-data
.end method
