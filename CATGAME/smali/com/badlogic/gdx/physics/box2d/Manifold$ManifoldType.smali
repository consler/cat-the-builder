.class public final enum Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;
.super Ljava/lang/Enum;
.source "Manifold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/physics/box2d/Manifold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManifoldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

.field public static final enum Circle:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

.field public static final enum FaceA:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

.field public static final enum FaceB:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 123
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    const-string v1, "Circle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->Circle:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    const-string v1, "FaceA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->FaceA:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    const-string v1, "FaceB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->FaceB:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    .line 122
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    sget-object v5, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->Circle:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->FaceA:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->$VALUES:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 122
    const-class v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;
    .locals 1

    .line 122
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->$VALUES:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    return-object v0
.end method
