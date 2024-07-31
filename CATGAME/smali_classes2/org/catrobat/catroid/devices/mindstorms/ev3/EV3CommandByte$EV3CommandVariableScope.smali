.class public final enum Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;
.super Ljava/lang/Enum;
.source "EV3CommandByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EV3CommandVariableScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

.field public static final enum PARAM_VARIABLE_SCOPE_GLOBAL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

.field public static final enum PARAM_VARIABLE_SCOPE_LOCAL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;


# instance fields
.field private variableScope:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    const-string v1, "PARAM_VARIABLE_SCOPE_LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->PARAM_VARIABLE_SCOPE_LOCAL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    const-string v1, "PARAM_VARIABLE_SCOPE_GLOBAL"

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->PARAM_VARIABLE_SCOPE_GLOBAL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    .line 53
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->PARAM_VARIABLE_SCOPE_LOCAL:Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "variableScope"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->variableScope:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;
    .locals 1

    .line 53
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 63
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3CommandByte$EV3CommandVariableScope;->variableScope:I

    int-to-byte v0, v0

    return v0
.end method
