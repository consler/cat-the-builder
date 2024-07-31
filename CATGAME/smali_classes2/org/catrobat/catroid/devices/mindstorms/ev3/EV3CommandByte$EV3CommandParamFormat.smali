.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;
.super Ljava/lang/Enum;
.source "EV3CommandByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EV3CommandParamFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

.field public static final enum PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

.field public static final enum PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;


# instance fields
.field private commandParamFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    const-string v1, "PARAM_FORMAT_SHORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    const-string v1, "PARAM_FORMAT_LONG"

    const/4 v3, 0x1

    const/16 v4, 0x80

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_LONG:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    .line 67
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->PARAM_FORMAT_SHORT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "commandParamFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->commandParamFormat:I

    .line 74
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;
    .locals 1

    .line 67
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 77
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamFormat;->commandParamFormat:I

    int-to-byte v0, v0

    return v0
.end method
