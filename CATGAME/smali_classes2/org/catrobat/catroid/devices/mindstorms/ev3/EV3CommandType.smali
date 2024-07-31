.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;
.super Ljava/lang/Enum;
.source "EV3CommandType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

.field public static final enum DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

.field public static final enum DIRECT_COMMAND_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

.field public static final enum SYSTEM_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

.field public static final enum SYSTEM_COMMAND_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;


# instance fields
.field private commandTypeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    const-string v1, "DIRECT_COMMAND_REPLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    .line 28
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    const-string v1, "DIRECT_COMMAND_NO_REPLY"

    const/4 v3, 0x1

    const/16 v4, 0x80

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    .line 29
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    const-string v1, "SYSTEM_COMMAND_REPLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->SYSTEM_COMMAND_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    .line 30
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    const-string v1, "SYSTEM_COMMAND_NO_REPLY"

    const/4 v5, 0x3

    const/16 v6, 0x81

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->SYSTEM_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    .line 26
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    aput-object v6, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->DIRECT_COMMAND_NO_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->SYSTEM_COMMAND_REPLY:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "commandTypeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->commandTypeValue:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;
    .locals 1

    .line 26
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 39
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandType;->commandTypeValue:I

    int-to-byte v0, v0

    return v0
.end method
