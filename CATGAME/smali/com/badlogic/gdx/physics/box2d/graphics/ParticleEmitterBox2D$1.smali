.class Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;
.super Ljava/lang/Object;
.source "ParticleEmitterBox2D.java"

# interfaces
.implements Lcom/badlogic/gdx/physics/box2d/RayCastCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;

    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;->this$0:Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportRayFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F
    .locals 3
    .param p1, "fixture"    # Lcom/badlogic/gdx/physics/box2d/Fixture;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "normal"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "fraction"    # F

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;->this$0:Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->particleCollided:Z

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D$1;->this$0:Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v1

    const v2, 0x42652ee0

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/graphics/ParticleEmitterBox2D;->normalAngle:F

    .line 53
    return p4
.end method
