.class synthetic Lname/antonsmirnov/firmata/message/I2cReadRequestMessage$1;
.super Ljava/lang/Object;
.source "I2cReadRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$name$antonsmirnov$firmata$message$I2cRequestMessage$MODE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    invoke-static {}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->values()[Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage$1;->$SwitchMap$name$antonsmirnov$firmata$message$I2cRequestMessage$MODE:[I

    :try_start_0
    sget-object v1, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->READ_ONCE:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage$1;->$SwitchMap$name$antonsmirnov$firmata$message$I2cRequestMessage$MODE:[I

    sget-object v1, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->READ_CONTINUOUSLY:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    invoke-virtual {v1}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
