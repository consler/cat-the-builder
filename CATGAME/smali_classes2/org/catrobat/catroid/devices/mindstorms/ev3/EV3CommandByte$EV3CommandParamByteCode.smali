.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;
.super Ljava/lang/Enum;
.source "EV3CommandByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EV3CommandParamByteCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_CONST_TYPE_LABEL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_CONST_TYPE_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_FOLLOW_FOUR_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_FOLLOW_ONE_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_FOLLOW_TERMINATED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_FOLLOW_TERMINATED2:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_FOLLOW_TWO_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_SHORT_MAX:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_SHORT_SIGN_NEGATIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_SHORT_SIGN_POSITIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_TYPE_CONSTANT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

.field public static final enum PARAM_TYPE_VARIABLE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;


# instance fields
.field private commandParamByteCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 32
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_TYPE_CONSTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_TYPE_CONSTANT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_TYPE_VARIABLE"

    const/4 v3, 0x1

    const/16 v4, 0x40

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_TYPE_VARIABLE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 34
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_CONST_TYPE_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_CONST_TYPE_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_CONST_TYPE_LABEL"

    const/4 v5, 0x3

    const/16 v6, 0x20

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_CONST_TYPE_LABEL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 36
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_FOLLOW_ONE_BYTE"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_ONE_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_FOLLOW_TWO_BYTE"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_TWO_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 37
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_FOLLOW_FOUR_BYTE"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v5}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_FOUR_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 38
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_FOLLOW_TERMINATED"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_TERMINATED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_FOLLOW_TERMINATED2"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v7}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_TERMINATED2:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 40
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_SHORT_MAX"

    const/16 v12, 0x9

    const/16 v13, 0x1f

    invoke-direct {v0, v1, v12, v13}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_MAX:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_SHORT_SIGN_POSITIVE"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_SIGN_POSITIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    const-string v1, "PARAM_SHORT_SIGN_NEGATIVE"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v6}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_SIGN_NEGATIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    .line 30
    const/16 v1, 0xc

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    sget-object v6, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_TYPE_CONSTANT:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v6, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_TYPE_VARIABLE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_CONST_TYPE_VALUE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_CONST_TYPE_LABEL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_ONE_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_TWO_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_FOUR_BYTE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_TERMINATED:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v10

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_FOLLOW_TERMINATED2:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_MAX:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v12

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->PARAM_SHORT_SIGN_POSITIVE:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    aput-object v2, v1, v13

    aput-object v0, v1, v14

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "commandParamByteCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->commandParamByteCode:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;
    .locals 1

    .line 30
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 49
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandParamByteCode;->commandParamByteCode:I

    int-to-byte v0, v0

    return v0
.end method
