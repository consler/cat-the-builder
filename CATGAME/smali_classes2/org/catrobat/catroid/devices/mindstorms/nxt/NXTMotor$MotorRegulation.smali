.class public final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;
.super Ljava/lang/Enum;
.source "NXTMotor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MotorRegulation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

.field public static final enum IDLE:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

.field public static final enum SPEED:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

.field public static final enum SYNC:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;


# instance fields
.field private motorRegulationValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 138
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->IDLE:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    const-string v1, "SPEED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->SPEED:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    const-string v1, "SYNC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->SYNC:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    .line 137
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    sget-object v5, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->IDLE:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->SPEED:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "motorRegulationValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->motorRegulationValue:I

    .line 144
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 137
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;
    .locals 1

    .line 137
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 147
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTMotor$MotorRegulation;->motorRegulationValue:I

    int-to-byte v0, v0

    return v0
.end method
