.class public final enum Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;
.super Ljava/lang/Enum;
.source "JointDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/physics/box2d/JointDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JointType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum MotorJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum RopeJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum Unknown:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum WheelJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static valueTypes:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 21
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->Unknown:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v3, "RevoluteJoint"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v5, "PrismaticJoint"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v5, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v7, "DistanceJoint"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v7, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v9, "PulleyJoint"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v9, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v11, "MouseJoint"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v11, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v13, "GearJoint"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v13, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v15, "WheelJoint"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WheelJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 22
    new-instance v15, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v14, "WeldJoint"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v14, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v12, "FrictionJoint"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v12, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v10, "RopeJoint"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RopeJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v10, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v8, "MotorJoint"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MotorJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const/16 v8, 0xc

    new-array v6, v8, [Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/16 v24, 0x2

    aput-object v3, v6, v24

    const/16 v22, 0x3

    aput-object v5, v6, v22

    const/16 v20, 0x4

    aput-object v7, v6, v20

    const/16 v18, 0x5

    aput-object v9, v6, v18

    const/16 v16, 0x6

    aput-object v11, v6, v16

    const/16 v17, 0x7

    aput-object v13, v6, v17

    const/16 v19, 0x8

    aput-object v15, v6, v19

    const/16 v21, 0x9

    aput-object v14, v6, v21

    const/16 v23, 0xa

    aput-object v12, v6, v23

    const/16 v25, 0xb

    aput-object v10, v6, v25

    .line 20
    sput-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->$VALUES:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-array v6, v8, [Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    .line 24
    sput-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->valueTypes:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;
    .locals 1

    .line 20
    const-class v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;
    .locals 1

    .line 20
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->$VALUES:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->value:I

    return v0
.end method
