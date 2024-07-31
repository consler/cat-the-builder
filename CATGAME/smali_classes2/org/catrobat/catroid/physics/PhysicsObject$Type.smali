.class public final enum Lorg/catrobat/catroid/physics/PhysicsObject$Type;
.super Ljava/lang/Enum;
.source "PhysicsObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/physics/PhysicsObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/physics/PhysicsObject$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/physics/PhysicsObject$Type;

.field public static final enum DYNAMIC:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

.field public static final enum FIXED:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

.field public static final enum NONE:Lorg/catrobat/catroid/physics/PhysicsObject$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 46
    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/physics/PhysicsObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->DYNAMIC:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    const-string v1, "FIXED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/physics/PhysicsObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->FIXED:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/physics/PhysicsObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->NONE:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 45
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    sget-object v5, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->DYNAMIC:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->FIXED:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->$VALUES:[Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/physics/PhysicsObject$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/physics/PhysicsObject$Type;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->$VALUES:[Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/physics/PhysicsObject$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    return-object v0
.end method
