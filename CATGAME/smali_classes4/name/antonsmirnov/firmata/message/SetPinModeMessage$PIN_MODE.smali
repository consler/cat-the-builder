.class public final enum Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;
.super Ljava/lang/Enum;
.source "SetPinModeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lname/antonsmirnov/firmata/message/SetPinModeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PIN_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

.field public static final enum ANALOG:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

.field public static final enum INPUT:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

.field public static final enum OUTPUT:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

.field public static final enum PWM:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

.field public static final enum SERVO:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;


# instance fields
.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->INPUT:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    .line 28
    new-instance v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    const-string v1, "OUTPUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->OUTPUT:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    .line 33
    new-instance v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    const-string v1, "ANALOG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->ANALOG:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    .line 38
    new-instance v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    const-string v1, "PWM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->PWM:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    .line 43
    new-instance v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    const-string v1, "SERVO"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->SERVO:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    .line 18
    const/4 v1, 0x5

    new-array v1, v1, [Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    sget-object v7, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->INPUT:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    aput-object v7, v1, v2

    sget-object v2, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->OUTPUT:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    aput-object v2, v1, v3

    sget-object v2, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->ANALOG:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    aput-object v2, v1, v4

    sget-object v2, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->PWM:Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->$VALUES:[Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->mode:I

    .line 53
    invoke-static {}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->access$000()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public static find(I)Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;
    .locals 2
    .param p0, "mode"    # I

    .line 57
    invoke-static {}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    return-object v0
.end method

.method public static values()[Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;
    .locals 1

    .line 18
    sget-object v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->$VALUES:[Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    invoke-virtual {v0}, [Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 48
    iget v0, p0, Lname/antonsmirnov/firmata/message/SetPinModeMessage$PIN_MODE;->mode:I

    return v0
.end method
