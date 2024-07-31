.class public final enum Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;
.super Ljava/lang/Enum;
.source "PhiroMotorMoveBackwardBrick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Motor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

.field public static final enum MOTOR_BOTH:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

.field public static final enum MOTOR_LEFT:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

.field public static final enum MOTOR_RIGHT:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    const-string v1, "MOTOR_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->MOTOR_LEFT:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    const-string v1, "MOTOR_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->MOTOR_RIGHT:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    const-string v1, "MOTOR_BOTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->MOTOR_BOTH:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    .line 47
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    sget-object v5, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->MOTOR_LEFT:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->MOTOR_RIGHT:Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->$VALUES:[Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;
    .locals 1

    .line 47
    sget-object v0, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->$VALUES:[Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick$Motor;

    return-object v0
.end method
