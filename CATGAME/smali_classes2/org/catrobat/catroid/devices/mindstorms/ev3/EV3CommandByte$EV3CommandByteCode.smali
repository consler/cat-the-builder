.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;
.super Ljava/lang/Enum;
.source "EV3CommandByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EV3CommandByteCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum INPUT_DEVICE_GET_CONNECTION:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum INPUT_DEVICE_GET_FORMAT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum INPUT_DEVICE_GET_RAW:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum INPUT_DEVICE_GET_TYPEMODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum INPUT_DEVICE_READY_RAW:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum INPUT_DEVICE_READY_SI:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum INPUT_DEVICE_SETUP:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum INPUT_DEVICE_STOP_ALL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum SOUND_PLAY_TONE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum UI_READ_GET_VBATT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

.field public static final enum UI_WRITE_LED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;


# instance fields
.field private commandByteCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 83
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "SOUND_PLAY_TONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->SOUND_PLAY_TONE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    .line 85
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "UI_WRITE_LED"

    const/16 v4, 0x1b

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->UI_WRITE_LED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    .line 86
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "UI_READ_GET_VBATT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->UI_READ_GET_VBATT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    .line 88
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "INPUT_DEVICE_GET_FORMAT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_FORMAT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "INPUT_DEVICE_GET_TYPEMODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_TYPEMODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "INPUT_DEVICE_SETUP"

    const/4 v7, 0x5

    const/16 v8, 0x9

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_SETUP:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    .line 89
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "INPUT_DEVICE_GET_RAW"

    const/4 v9, 0x6

    const/16 v10, 0xb

    invoke-direct {v0, v1, v9, v10}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_RAW:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "INPUT_DEVICE_GET_CONNECTION"

    const/4 v11, 0x7

    const/16 v12, 0xc

    invoke-direct {v0, v1, v11, v12}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_CONNECTION:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "INPUT_DEVICE_STOP_ALL"

    const/16 v12, 0x8

    const/16 v13, 0xd

    invoke-direct {v0, v1, v12, v13}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_STOP_ALL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    .line 90
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "INPUT_DEVICE_READY_RAW"

    const/16 v13, 0x1c

    invoke-direct {v0, v1, v8, v13}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_READY_RAW:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    const-string v1, "INPUT_DEVICE_READY_SI"

    const/16 v13, 0xa

    const/16 v14, 0x1d

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_READY_SI:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    .line 81
    new-array v1, v10, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    sget-object v10, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->SOUND_PLAY_TONE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v10, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->UI_WRITE_LED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->UI_READ_GET_VBATT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_FORMAT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_TYPEMODE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_SETUP:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_RAW:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_GET_CONNECTION:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_STOP_ALL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v2, v1, v12

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->INPUT_DEVICE_READY_RAW:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    aput-object v2, v1, v8

    aput-object v0, v1, v13

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "commandByteCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->commandByteCode:I

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 81
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;
    .locals 1

    .line 81
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 99
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandByteCode;->commandByteCode:I

    int-to-byte v0, v0

    return v0
.end method
