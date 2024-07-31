.class public final enum Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;
.super Ljava/lang/Enum;
.source "LegoEv3MotorStopBrick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Motor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

.field public static final enum ALL_MOTORS:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

.field public static final enum MOTOR_A:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

.field public static final enum MOTOR_B:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

.field public static final enum MOTOR_B_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

.field public static final enum MOTOR_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

.field public static final enum MOTOR_D:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    const-string v1, "MOTOR_A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_A:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    const-string v1, "MOTOR_B"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_B:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    const-string v1, "MOTOR_C"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    const-string v1, "MOTOR_D"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_D:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    const-string v1, "MOTOR_B_C"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_B_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    const-string v1, "ALL_MOTORS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->ALL_MOTORS:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    .line 43
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    sget-object v8, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_A:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    aput-object v8, v1, v2

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_B:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_D:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->MOTOR_B_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->$VALUES:[Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;
    .locals 1

    .line 43
    sget-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->$VALUES:[Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick$Motor;

    return-object v0
.end method
