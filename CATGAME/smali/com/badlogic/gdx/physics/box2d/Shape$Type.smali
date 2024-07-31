.class public final enum Lcom/badlogic/gdx/physics/box2d/Shape$Type;
.super Ljava/lang/Enum;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/physics/box2d/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/physics/box2d/Shape$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/physics/box2d/Shape$Type;

.field public static final enum Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

.field public static final enum Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

.field public static final enum Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

.field public static final enum Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const-string v1, "Circle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Shape$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const-string v1, "Edge"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/physics/box2d/Shape$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const-string v1, "Polygon"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/physics/box2d/Shape$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const-string v1, "Chain"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/physics/box2d/Shape$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    .line 32
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    aput-object v6, v1, v2

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->$VALUES:[Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .line 32
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->$VALUES:[Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/physics/box2d/Shape$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method
