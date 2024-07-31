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

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "RevoluteJoint"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "PrismaticJoint"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "DistanceJoint"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "PulleyJoint"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "MouseJoint"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "GearJoint"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "WheelJoint"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WheelJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 22
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "WeldJoint"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "FrictionJoint"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "RopeJoint"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RopeJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "MotorJoint"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MotorJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 20
    const/16 v1, 0xc

    new-array v14, v1, [Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v15, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->Unknown:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v15, v14, v2

    sget-object v16, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v16, v14, v3

    sget-object v17, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v17, v14, v4

    sget-object v18, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v18, v14, v5

    sget-object v19, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v19, v14, v6

    sget-object v20, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v20, v14, v7

    sget-object v21, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v21, v14, v8

    sget-object v22, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WheelJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v22, v14, v9

    sget-object v23, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v23, v14, v10

    sget-object v24, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v24, v14, v11

    sget-object v25, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RopeJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v25, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->$VALUES:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 24
    new-array v1, v1, [Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v15, v1, v2

    aput-object v16, v1, v3

    aput-object v17, v1, v4

    aput-object v18, v1, v5

    aput-object v19, v1, v6

    aput-object v20, v1, v7

    aput-object v21, v1, v8

    aput-object v22, v1, v9

    aput-object v23, v1, v10

    aput-object v24, v1, v11

    aput-object v25, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->valueTypes:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->value:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    return-object v0
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
