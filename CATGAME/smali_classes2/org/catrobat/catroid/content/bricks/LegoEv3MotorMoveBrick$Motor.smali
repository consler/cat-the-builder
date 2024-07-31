.class public final enum Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;
.super Ljava/lang/Enum;
.source "LegoEv3MotorMoveBrick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Motor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

.field public static final enum MOTOR_A:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

.field public static final enum MOTOR_B:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

.field public static final enum MOTOR_B_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

.field public static final enum MOTOR_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

.field public static final enum MOTOR_D:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    const-string v1, "MOTOR_A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_A:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    const-string v1, "MOTOR_B"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_B:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    const-string v1, "MOTOR_C"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    const-string v1, "MOTOR_D"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_D:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    const-string v1, "MOTOR_B_C"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_B_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    .line 44
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    sget-object v7, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_A:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    aput-object v7, v1, v2

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_B:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_C:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->MOTOR_D:Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->$VALUES:[Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;
    .locals 1

    .line 44
    sget-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->$VALUES:[Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick$Motor;

    return-object v0
.end method
