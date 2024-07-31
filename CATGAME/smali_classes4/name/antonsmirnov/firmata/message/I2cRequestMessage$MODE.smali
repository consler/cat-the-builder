.class public final enum Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;
.super Ljava/lang/Enum;
.source "I2cRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lname/antonsmirnov/firmata/message/I2cRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

.field public static final enum READ_CONTINUOUSLY:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

.field public static final enum READ_ONCE:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

.field public static final enum STOP_READING:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

.field public static final enum WRITE:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    new-instance v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    const-string v1, "WRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->WRITE:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    .line 52
    new-instance v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    const-string v1, "READ_ONCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->READ_ONCE:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    .line 57
    new-instance v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    const-string v1, "READ_CONTINUOUSLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->READ_CONTINUOUSLY:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    .line 62
    new-instance v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    const-string v1, "STOP_READING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->STOP_READING:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    .line 42
    const/4 v1, 0x4

    new-array v1, v1, [Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    sget-object v6, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->WRITE:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    aput-object v6, v1, v2

    sget-object v2, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->READ_ONCE:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    aput-object v2, v1, v3

    sget-object v2, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->READ_CONTINUOUSLY:Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->$VALUES:[Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    invoke-direct {p0, p3}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->setValue(I)V

    .line 77
    return-void
.end method

.method private setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 67
    iput p1, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->value:I

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    return-object v0
.end method

.method public static values()[Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;
    .locals 1

    .line 42
    sget-object v0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->$VALUES:[Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    invoke-virtual {v0}, [Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 71
    iget v0, p0, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->value:I

    return v0
.end method
