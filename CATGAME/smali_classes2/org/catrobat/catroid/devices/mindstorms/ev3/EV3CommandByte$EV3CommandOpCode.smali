.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;
.super Ljava/lang/Enum;
.source "EV3CommandByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EV3CommandOpCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field private static final LOOKUP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OP_INPUT_DEVICE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_INPUT_READ:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_INPUT_READ_SI:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_KEEP_ALIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_OUTPUT_POWER:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_OUTPUT_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_OUTPUT_START:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_OUTPUT_STEP_POWER:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_OUTPUT_STEP_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_OUTPUT_STOP:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_OUTPUT_TIME_POWER:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_OUTPUT_TIME_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_SOUND_TEST:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_UI_READ:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

.field public static final enum OP_UI_WRITE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;


# instance fields
.field private commandByteValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 104
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_UI_READ"

    const/4 v2, 0x0

    const/16 v3, 0x81

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_UI_READ:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_UI_WRITE"

    const/4 v3, 0x1

    const/16 v4, 0x82

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_UI_WRITE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 106
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_KEEP_ALIVE"

    const/4 v4, 0x2

    const/16 v5, 0x90

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_KEEP_ALIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 108
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_SOUND"

    const/4 v5, 0x3

    const/16 v6, 0x94

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_SOUND_TEST"

    const/4 v6, 0x4

    const/16 v7, 0x95

    invoke-direct {v0, v1, v6, v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_SOUND_TEST:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 110
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_INPUT_DEVICE"

    const/4 v7, 0x5

    const/16 v8, 0x99

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_DEVICE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_INPUT_READ"

    const/4 v8, 0x6

    const/16 v9, 0x9a

    invoke-direct {v0, v1, v8, v9}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_READ:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_INPUT_READ_SI"

    const/4 v9, 0x7

    const/16 v10, 0x9d

    invoke-direct {v0, v1, v9, v10}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_READ_SI:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 112
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_OUTPUT_POWER"

    const/16 v10, 0x8

    const/16 v11, 0xa4

    invoke-direct {v0, v1, v10, v11}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_POWER:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_OUTPUT_SPEED"

    const/16 v11, 0x9

    const/16 v12, 0xa5

    invoke-direct {v0, v1, v11, v12}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_OUTPUT_START"

    const/16 v12, 0xa

    const/16 v13, 0xa6

    invoke-direct {v0, v1, v12, v13}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_START:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 114
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_OUTPUT_STEP_SPEED"

    const/16 v13, 0xb

    const/16 v14, 0xae

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_STEP_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_OUTPUT_STEP_POWER"

    const/16 v14, 0xc

    const/16 v15, 0xac

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_STEP_POWER:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_OUTPUT_TIME_SPEED"

    const/16 v15, 0xd

    const/16 v14, 0xaf

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_TIME_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_OUTPUT_TIME_POWER"

    const/16 v14, 0xe

    const/16 v15, 0xad

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_TIME_POWER:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 115
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const-string v1, "OP_OUTPUT_STOP"

    const/16 v15, 0xf

    const/16 v14, 0xa3

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_STOP:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 103
    const/16 v1, 0x10

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    sget-object v14, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_UI_READ:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v14, v1, v2

    sget-object v14, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_UI_WRITE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v14, v1, v3

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_KEEP_ALIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_SOUND:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v5

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_SOUND_TEST:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v6

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_DEVICE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v7

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_READ:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v8

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_INPUT_READ_SI:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v9

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_POWER:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v10

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v11

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_START:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v12

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_STEP_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    aput-object v3, v1, v13

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_STEP_POWER:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/16 v4, 0xc

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_TIME_SPEED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/16 v4, 0xd

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->OP_OUTPUT_TIME_POWER:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    aput-object v0, v1, v15

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->LOOKUP:Landroid/util/SparseArray;

    .line 120
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 121
    .local v3, "c":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;
    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->LOOKUP:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->commandByteValue:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    .end local v3    # "c":Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "commandByteValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->commandByteValue:I

    .line 126
    return-void
.end method

.method public static getOpCodeByValue(B)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;
    .locals 2
    .param p0, "value"    # B

    .line 137
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->LOOKUP:Landroid/util/SparseArray;

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    return-object v0
.end method

.method public static isMember(B)Z
    .locals 2
    .param p0, "memberToTest"    # B

    .line 133
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->LOOKUP:Landroid/util/SparseArray;

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 103
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;
    .locals 1

    .line 103
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 129
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandOpCode;->commandByteValue:I

    int-to-byte v0, v0

    return v0
.end method
