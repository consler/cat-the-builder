.class public final enum Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;
.super Ljava/lang/Enum;
.source "PhysicsBoundaryBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BoundaryBoxIdentifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

.field public static final enum BBI_HORIZONTAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

.field public static final enum BBI_VERTICAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    const-string v1, "BBI_HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->BBI_HORIZONTAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    const-string v1, "BBI_VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->BBI_VERTICAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    sget-object v4, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->BBI_HORIZONTAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->$VALUES:[Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;
    .locals 1

    .line 39
    sget-object v0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->$VALUES:[Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    return-object v0
.end method
