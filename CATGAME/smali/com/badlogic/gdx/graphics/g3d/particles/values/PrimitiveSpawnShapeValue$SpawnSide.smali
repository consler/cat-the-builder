.class public final enum Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;
.super Ljava/lang/Enum;
.source "PrimitiveSpawnShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpawnSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

.field public static final enum both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

.field public static final enum bottom:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

.field public static final enum top:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    const-string v1, "both"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    const-string/jumbo v1, "top"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->top:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    const-string v1, "bottom"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->bottom:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    .line 28
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->both:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    aput-object v5, v1, v2

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->top:Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;
    .locals 1

    .line 28
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->$VALUES:[Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;

    return-object v0
.end method
