.class public Lname/antonsmirnov/firmata/message/SetPinModeMessage;
.super Lname/antonsmirnov/firmata/message/Message;
.source "SetPinModeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;
    }
.end annotation


# static fields
.field private static modes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mode:I

.field private pin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->modes:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/Message;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "pin"    # I
    .param p2, "mode"    # I

    .line 72
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->setPin(I)V

    .line 74
    invoke-virtual {p0, p2}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->setMode(I)V

    .line 75
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 10
    sget-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->modes:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 99
    invoke-super {p0, p1}, Lname/antonsmirnov/firmata/message/Message;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    return v1

    .line 102
    :cond_0
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    .line 103
    .local v0, "message":Lname/antonsmirnov/firmata/message/SetPinModeMessage;
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->getPin()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->getPin()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 105
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->getMode()I

    move-result v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->getMode()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public getMode()I
    .locals 1

    .line 90
    iget v0, p0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->mode:I

    return v0
.end method

.method public getPin()I
    .locals 1

    .line 80
    iget v0, p0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->pin:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 94
    iput p1, p0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->mode:I

    .line 95
    return-void
.end method

.method public setPin(I)V
    .locals 0
    .param p1, "pin"    # I

    .line 84
    iput p1, p0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->pin:I

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->pin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SetPinModeMessage[pin={0}, mode={1}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
